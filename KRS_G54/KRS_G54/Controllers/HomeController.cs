using Microsoft.AspNetCore.Mvc;
using KRS_G54.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using Newtonsoft.Json;
using KRS_G54.ViewModels;
using System.Text.Json;
using X.PagedList;

namespace KRS_G54.Controllers;
public class HomeController : Controller
{
    private abcContext _context;

    public HomeController()
    {
        _context = new abcContext();
    }

    public IActionResult Index()
    {
        var accountId = Convert.ToInt32(HttpContext.Session.GetString("accId"));
        ViewBag.semesters = _context.Semesters
    .Select(s => new
    {
        Semester = s,
        Year = Convert.ToInt32(s.SemesterName.Substring(s.SemesterName.Length - 4)),
        Season = s.SemesterName.Substring(0, s.SemesterName.Length - 4)
    })
    .OrderBy(s => s.Year)
    .ThenBy(s => s.Season == "SPRING" ? 1 : s.Season == "SUMMER" ? 2 : 3)
    .Select(s => s.Semester)
    .ToList();
        var classes = _context.Classes
                            .Include(c => c.Subject)
                            .Include(c => c.Semester)
                            .Where(c => c.ClassUsers.Any(cu => cu.AccountId == accountId) && c.Status == true)
                            .OrderBy(c => c.Semester.SemesterName)
                            .ToList();
        ViewBag.classes = classes;
        return View();
    }
    [HttpGet]
    public IActionResult ClassDetail(int id)
    {
        HttpContext.Session.SetString("ClassId", id.ToString());
        return View();
    }
    public IActionResult ExamReport(int classId, string searchStudent = "", double? scoreFrom = null, double? scoreTo = null, string examName = "")
    {
        var classEntity = _context.Classes
            .Include(c => c.Exams)
            .ThenInclude(e => e.ExamResults)
            .ThenInclude(er => er.Account)
            .FirstOrDefault(c => c.ClassId == classId);

        if (classEntity == null)
        {
            return NotFound();
        }

        var results = classEntity.Exams.SelectMany(e => e.ExamResults).AsQueryable();

        if (!string.IsNullOrEmpty(searchStudent))
        {
            results = results.Where(r => r.Account.FullName.ToLower().Contains(searchStudent));
        }

        if (scoreFrom.HasValue)
        {
            results = results.Where(r => r.Score >= scoreFrom.Value);
        }

        if (scoreTo.HasValue)
        {
            results = results.Where(r => r.Score <= scoreTo.Value);
        }

        if (!string.IsNullOrEmpty(examName))
        {
            results = results.Where(r => r.Exam.ExamName.ToLower().Contains(examName));
        }

        var summaryResults = results
            .GroupBy(r => new { r.AccountId, r.Account.FullName, r.Account.Email, r.Exam.ExamName })
            .Select(g => new StudentExamSummary
            {
                AccountId = (int)g.Key.AccountId,
                FullName = g.Key.FullName,
                Email = g.Key.Email,
                ExamName = g.Key.ExamName,
                HighestScore = g.Max(r => r.Score) ?? 0,
                AttemptCount = g.Count()
            })
            .ToList();

        var viewModel = new ExamReportViewModel
        {
            Class = classEntity,
            FilteredResults = summaryResults
        };
        var classID = Convert.ToInt32(HttpContext.Session.GetString("ClassId"));
        ViewBag.ClassId = classID;
        ViewBag.SearchStudent = searchStudent??String.Empty;
        ViewBag.ExamName = examName??String.Empty;
        ViewBag.ScoreFrom = scoreFrom;
        ViewBag.ScoreTo = scoreTo;
        return View(viewModel);
    }

    [HttpGet]
    public IActionResult Exam(int? page)
    {
        var accountId = Convert.ToInt32(HttpContext.Session.GetString("accId"));
        var classID = Convert.ToInt32(HttpContext.Session.GetString("ClassId"));
        ViewBag.ClassId = classID;

        var exams = _context.Exams
            .Include(e => e.Subject)
            .Where(e => e.ClassId == classID)
            .ToList();

        var subject = _context.Classes
            .Where(c => c.ClassId == classID)
            .Select(c => c.SubjectId)
            .FirstOrDefault();

        var examResultsDict = new Dictionary<int, List<ExamResult>>();
        ViewBag.SubjectId = subject;

        foreach (var exam in exams)
        {
            var examResults = _context.ExamResults
                .Where(er => er.ExamId == exam.ExamId && er.AccountId == accountId)
                .ToList();
            examResultsDict.Add(exam.ExamId, examResults);
        }

        ViewBag.ExamResults = examResultsDict;

        int pageSize = 10;
        int pageNumber = page ?? 1;

        var pagedExams = exams.ToPagedList(pageNumber, pageSize);
        return View(pagedExams);
    }
    public IActionResult Create(int subjectId, int classId)
    {
        // Retrieve the subject with the specified subjectId
        ViewBag.Subject = _context.Subjects
                                    .FirstOrDefault(x => x.SubjectId == subjectId);

        // Retrieve the class with the specified classId
        ViewBag.Class = _context.Classes
                                   .FirstOrDefault(x => x.ClassId == classId);
        ViewBag.Exams = _context.Exams
                             .Where(x => x.ClassId == classId && x.SubjectId == subjectId)
                             .ToList();
        ViewBag.ExamManager = _context.Exams
                            .Where(X => X.SubjectId == subjectId && X.ClassId!=classId)
                            .ToList();
        // Return the view associated with this action method
        return View();
    }
    public IActionResult ListQuestion(int? id)
    {
        if (id != null)
        {
            List<Exam> exams = _context.Exams.Where(x => x.IsPractice == true && x.ExamId == id).ToList();
            ViewBag.ListExam = exams;
            var exam = _context.Exams.FirstOrDefault(x => x.ExamId == id);
            if (exam == null)
            {
                return NotFound();
            }
            ViewBag.Exam = exam;
        }
        else
        {
            ViewBag.ListExam = _context.Exams.Where(x => x.IsPractice == true).ToList();
            ViewBag.ListQuestion = _context.Knowledges.ToList();
        }
        return View();
    }
    [HttpGet]
    public IActionResult Edit(int id, int subjectId, int classId)
    {
        var exam = _context.Exams.Find(id);

        if (exam == null)
        {
            return NotFound();
        }

        ViewBag.Subject = _context.Subjects.FirstOrDefault(x => x.SubjectId == subjectId);
        ViewBag.Class = _context.Classes.FirstOrDefault(x => x.ClassId == classId);

        // Gán giá trị CreatedDate và EndDate vào ViewBag
        ViewBag.StartDate = exam.CreatedDate.HasValue ? exam.CreatedDate.Value.ToString("yyyy-MM-dd HH:mm:ss") : string.Empty;
        ViewBag.EndDate = exam.EndDate.HasValue ? exam.EndDate.Value.ToString("yyyy-MM-dd HH:mm:ss") : string.Empty;

        return View(exam);
    }


    [HttpPost]
    public IActionResult Edit(Exam exam, int subjectId, int classId)
    {
        if (ModelState.IsValid)
        {
           
            _context.Exams.Update(exam);        
            exam.QuestionCount = _context.Questions.Count(x => x.ExamId == exam.ExamId);
            _context.SaveChanges();
            return RedirectToAction("Exam");
        }
        ViewBag.Subject = _context.Subjects
                                   .FirstOrDefault(x => x.SubjectId == subjectId);

        // Retrieve the class with the specified classId
        ViewBag.Class = _context.Classes
                                   .FirstOrDefault(x => x.ClassId == classId);
        return View(exam);
    }
    public IActionResult EditListQuestion(int id)
    {
        var exam = _context.Exams
                           .Include(e => e.Questions)
                           .ThenInclude(q => q.ExamKnowledge)
                           .ThenInclude(k => k.AnswerOptions)
                           .FirstOrDefault(e => e.ExamId == id);

        if (exam == null)
        {
            return NotFound();
        }

        var examViewModel = new ExamViewModel
        {
            ExamId = exam.ExamId,
            ExamName = exam.ExamName,
            Questions = exam.Questions.Select(q => new QuestionViewModel
            {
                KnowledgeId = q.ExamKnowledge.ExamKnowledgeId,
                KnowledgeName = q.ExamKnowledge.Knowledge,
                Answers = q.ExamKnowledge.AnswerOptions.Select(a => new AnswerViewModel
                {
                    AnswerOption1 = a.AnswerOption1,
                    IsKey = a.IsKey ?? false
                }).ToList()
            }).ToList()
        };

        ViewBag.ListExam = _context.Exams.Select(e => new { e.ExamId, e.ExamName }).ToList();
        ViewBag.SelectedExamId = id;
        ViewBag.ListQuestion = examViewModel.Questions;

        return View(examViewModel);
    }
    public class ExistingExamData
    {
        public int ExistingExamId { get; set; }
        public string ExamName { get; set; }
        public int ClassId { get; set; }
        public int SubjectId { get; set; }
        public int TimeCount { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime EndDate { get; set; }
    }
    [HttpPost]
    public ActionResult AddExistingTest([FromBody] JsonElement jsonData)
    {
        if (jsonData.ValueKind == JsonValueKind.Null)
        {
            return BadRequest("Invalid data.");
        }

        try
        {
            // Parse the JSON element to extract required data
            int existingExamId = int.Parse(jsonData.GetProperty("existingExamId").GetString());
            string examName = jsonData.GetProperty("ExamName").GetString();
            int classId = int.Parse(jsonData.GetProperty("ClassId").GetString());
            int subjectId = int.Parse(jsonData.GetProperty("SubjectId").GetString());
            int timeCount = int.Parse(jsonData.GetProperty("TimeCount").GetString());
            DateTime createdDate = DateTime.Parse(jsonData.GetProperty("CreatedDate").GetString());
            DateTime endDate = DateTime.Parse(jsonData.GetProperty("EndDate").GetString());

            // Find the existing exam
            var existingExam = _context.Exams
                                       .Include(e => e.Questions)
                                       .ThenInclude(q => q.ExamKnowledge)
                                       .ThenInclude(ek => ek.AnswerOptions)
                                       .FirstOrDefault(e => e.ExamId == existingExamId);

            if (existingExam == null)
            {
                return BadRequest("Existing exam not found.");
            }

            // Create a new exam with the extracted data
            var newExam = new Exam
            {
                ExamName = examName,
                ClassId = classId,
                SubjectId = subjectId,
                TimeCount = timeCount,
                CreatedDate = createdDate,
                EndDate = endDate,
                IsActive = true
            };

            // Duplicate questions and associated knowledge and answer options from the existing exam
            foreach (var question in existingExam.Questions)
            {
                var newKnowledge = new ExamKnowledge
                {
                    Knowledge = question.ExamKnowledge.Knowledge
                };

                foreach (var answerOption in question.ExamKnowledge.AnswerOptions)
                {
                    var newAnswerOption = new AnswerOption
                    {
                        AnswerOption1 = answerOption.AnswerOption1,
                        IsKey = answerOption.IsKey
                    };

                    newKnowledge.AnswerOptions.Add(newAnswerOption);
                }

                var newQuestion = new Question
                {
                    Exam = newExam,
                    ExamKnowledge = newKnowledge
                };

                newExam.Questions.Add(newQuestion);

            }

            // Save the new exam to the database
            _context.Exams.Add(newExam);
            _context.SaveChanges();
            var examQuestionCount = _context.Questions.Count(q => q.ExamId == newExam.ExamId);
            if (newExam != null)
            {
                // Cập nhật cột questioncount
                newExam.QuestionCount = examQuestionCount;

                // Lưu thay đổi vào cơ sở dữ liệu
                _context.SaveChanges();
            }
            return Ok(newExam.ExamId);
        }
        catch (Exception ex)
        {
            return BadRequest("Error: " + ex.Message);
        }
    }
    [HttpPost]
    public ActionResult EditQuestion([FromBody] JsonElement jsonData)
    {
        if (jsonData.ValueKind == JsonValueKind.Null)
        {
            return BadRequest("Invalid data.");
        }

        try
        {
            // Convert JsonElement to string and then deserialize it
            var jsonString = jsonData.GetRawText();
            var data = JsonConvert.DeserializeObject<ExamQuestionData>(jsonString);
            // Handle removed questions
            if (data.RemovedKnowledgeIds != null && data.RemovedKnowledgeIds.Any())
            {
                var knowledgesToRemove = _context.ExamKnowledges
                    .Include(k => k.AnswerOptions)
                    .Include(k => k.Questions)
                    .Include(k => k.UserQuestions)
                    .Where(k => data.RemovedKnowledgeIds.Contains(k.ExamKnowledgeId))
                    .ToList();

                foreach (var knowledge in knowledgesToRemove)
                {
                    _context.UserQuestions.RemoveRange(knowledge.UserQuestions);
                    _context.Questions.RemoveRange(knowledge.Questions);
                    _context.AnswerOptions.RemoveRange(knowledge.AnswerOptions);
                    _context.ExamKnowledges.Remove(knowledge);
                }
            }
            foreach (var knowledge in data.KnowledgeList)
            {
                // Skip if KnowledgeName is null or 0
                if (string.IsNullOrWhiteSpace(knowledge.KnowledgeName)
                       || knowledge.KnowledgeName == "0" || knowledge.KnowledgeId == 0)
                {
                    continue;
                }


                var existingKnowledge = _context.ExamKnowledges
                    .Include(k => k.AnswerOptions)
                    .FirstOrDefault(k => k.ExamKnowledgeId == knowledge.KnowledgeId);

                if (existingKnowledge != null)
                {
                    // Update existing knowledge
                    existingKnowledge.Knowledge = knowledge.KnowledgeName;

                    // Remove existing answer options
                    _context.AnswerOptions.RemoveRange(existingKnowledge.AnswerOptions);

                    // Add new answer options
                    foreach (var answer in knowledge.Answers)
                    {
                        var answerOption = new AnswerOption
                        {
                            ExamKnowledgeId = existingKnowledge.ExamKnowledgeId,
                            AnswerOption1 = answer.AnswerOption1,
                            IsKey = answer.IsKey
                        };
                        _context.AnswerOptions.Add(answerOption);
                    }

                    // Update the combined correct answer
                    var keyAnswers = knowledge.Answers
                        .Where(a => a.IsKey)
                        .Select(a => a.AnswerOption1)
                        .ToList();
                    existingKnowledge.Answer = string.Join("", keyAnswers);
                    _context.SaveChanges();
                    var examQuestionCount = _context.Questions.Count(q => q.ExamId == data.ExamId);
                    var exam = _context.Exams.FirstOrDefault(e => e.ExamId == data.ExamId);
                    if (exam != null)
                    {
                        // Cập nhật cột questioncount
                        exam.QuestionCount = examQuestionCount;

                        // Lưu thay đổi vào cơ sở dữ liệu
                        _context.SaveChanges();
                    }
                }
                else
                {
                    // If knowledge doesn't exist, create it
                    var kl = new ExamKnowledge
                    {
                        Knowledge = knowledge.KnowledgeName,
                    };
                    _context.ExamKnowledges.Add(kl);
                    _context.SaveChanges();

                    // Create and save a new question
                    var question = new Question
                    {
                        ExamId = data.ExamId,
                        ExamKnowledgeId = kl.ExamKnowledgeId
                    };
                    _context.Questions.Add(question);
                    _context.SaveChanges();

                    // Save the answer options
                    foreach (var answer in knowledge.Answers)
                    {
                        var answerOption = new AnswerOption
                        {
                            ExamKnowledgeId = kl.ExamKnowledgeId,
                            AnswerOption1 = answer.AnswerOption1,
                            IsKey = answer.IsKey
                        };
                        _context.AnswerOptions.Add(answerOption);
                    }
                    _context.SaveChanges();

                    // Combine correct answers
                    var keyAnswers = _context.AnswerOptions
                        .Where(a => (bool)a.IsKey && a.ExamKnowledgeId == kl.ExamKnowledgeId)
                        .Select(a => a.AnswerOption1)
                        .ToList();
                    var combinedAnswer = string.Join("", keyAnswers);
                    var knowledge2 = _context.Knowledges.FirstOrDefault(k => k.KnowledgeId == kl.ExamKnowledgeId);
                    if (knowledge2 != null)
                    {
                        knowledge2.Answer = combinedAnswer;
                        _context.SaveChanges();
                    }
                    var examQuestionCount = _context.Questions.Count(q => q.ExamId == data.ExamId);
                    var exam = _context.Exams.FirstOrDefault(e => e.ExamId == data.ExamId);
                    if (exam != null)
                    {
                        // Cập nhật cột questioncount
                        exam.QuestionCount = examQuestionCount;

                        // Lưu thay đổi vào cơ sở dữ liệu
                        _context.SaveChanges();
                    }
                }
            }

            _context.SaveChanges();
            return Ok(true);
        }
        catch (Exception ex)
        {
            // Handle any exceptions that occur during processing
            return BadRequest("Error: " + ex.Message);
        }
    }

    [HttpPost]
    public ActionResult CreateQuestion([FromBody] JsonElement jsonData)
    {
        if (jsonData.ValueKind == JsonValueKind.Null)
        {
            return BadRequest("Invalid data.");
        }

        try
        {
            // Convert JsonElement to string and then deserialize it
            var jsonString = jsonData.GetRawText();
            var data = JsonConvert.DeserializeObject<ExamQuestionData>(jsonString);

            foreach (var knowledge in data.KnowledgeList)
            {
                // Kiểm tra nếu KnowledgeName là null hoặc có giá trị là 0, thì bỏ qua
                if (string.IsNullOrWhiteSpace(knowledge.KnowledgeName) || knowledge.KnowledgeName == "0")
                {
                    continue; // Bỏ qua vòng lặp và xử lý phần tử tiếp theo
                }

                var kl = new ExamKnowledge
                {
                    Knowledge = knowledge.KnowledgeName,
                };
                _context.ExamKnowledges.Add(kl);
                _context.SaveChanges(); // Lưu lại để lấy được KnowledgeId

                // Create and save a new question
                

                // Save the answer options
                foreach (var answer in knowledge.Answers)
                {
                    var answerOption = new AnswerOption
                    {
                        ExamKnowledgeId = kl.ExamKnowledgeId,
                        AnswerOption1 = answer.AnswerOption1,
                        IsKey = answer.IsKey
                    };
                    _context.AnswerOptions.Add(answerOption);
                }
                _context.SaveChanges();
                var keyAnswers = _context.AnswerOptions
                 .Where(a => (bool)a.IsKey && a.ExamKnowledgeId == kl.ExamKnowledgeId)
                 .Select(a => a.AnswerOption1) // Chỉ lấy AnswerOption1 của các câu trả lời
                 .ToList();
                var combinedAnswer = string.Join("", keyAnswers);
                var knowledge2 = _context.ExamKnowledges.FirstOrDefault(k => k.ExamKnowledgeId == kl.ExamKnowledgeId);
                if (knowledge2 != null)
                {
                    knowledge2.Answer = combinedAnswer;
                    _context.SaveChanges();
                }
                var question = new Question
                {
                    ExamId = data.ExamId,
                    ExamKnowledgeId = kl.ExamKnowledgeId
                };
                _context.Questions.Add(question);
                _context.SaveChanges(); // Lưu lại để lấy được QuestionId
                var examQuestionCount = _context.Questions.Count(q => q.ExamId == data.ExamId);
                var exam = _context.Exams.FirstOrDefault(e => e.ExamId == data.ExamId);
                if (exam != null)
                {
                    // Cập nhật cột questioncount
                    exam.QuestionCount = examQuestionCount;

                    // Lưu thay đổi vào cơ sở dữ liệu
                    _context.SaveChanges();
                }
            }
            _context.SaveChanges();
            return Ok(true);
        }
        catch (Exception ex)
        {
            // Handle any exceptions that occur during processing
            return BadRequest("Error: " + ex.Message);
        }
    }

    public class ExamQuestionData
    {
        public int ExamId { get; set; }
        public List<KnowledgeData> KnowledgeList { get; set; }
        public string KnowledgeName { get; set; } // Thêm thuộc tính KnowledgeName
        public List<int> RemovedKnowledgeIds { get; set; }
    }
    public class KnowledgeData
    {
        public int KnowledgeId { get; set; }
        public List<AnswerOptionData> Answers { get; set; }
        public string KnowledgeName { get; set; }
        public List<int> RemovedKnowledgeIds { get; set; }
    }

    public class AnswerOptionData
    {
        public string AnswerOption1 { get; set; }
        public bool IsKey { get; set; }
    }
    [HttpPost]
    public int Create([FromBody] JsonElement jsonData)
    {
        try
        {
            string examName = jsonData.GetProperty("ExamName").GetString();
            int classId = int.Parse(jsonData.GetProperty("ClassId").GetString());
            int subjectId = int.Parse(jsonData.GetProperty("SubjectId").GetString());
            int timeCount = int.Parse(jsonData.GetProperty("TimeCount").GetString());
            DateTime createdDate = DateTime.Parse(jsonData.GetProperty("CreatedDate").GetString());
            DateTime endDate = DateTime.Parse(jsonData.GetProperty("EndDate").GetString());
            var newExam = new Exam
            {
                ExamName = examName,
                ClassId = classId,
                SubjectId = subjectId,
                TimeCount = timeCount,
                CreatedDate = createdDate,
                EndDate = endDate,
                IsActive = true
            };
            _context.Exams.Add(newExam);
            _context.SaveChanges();
            return newExam.ExamId;
        }
        catch
        {
            return -1;
        }
    }
    [HttpGet]
    public IActionResult CheckExamDetail(int id)
    {
        const int MaxAttempts = 3
            ; // Define the maximum number of attempts
        var accountId = Convert.ToInt32(HttpContext.Session.GetString("accId"));

        // Count the user's previous attempts for this exam
        var previousAttemptsCount = _context.ExamResults
            .Count(er => er.ExamId == id && er.AccountId == accountId);

        // Check if the user has exceeded the maximum number of attempts
        if (previousAttemptsCount >= MaxAttempts)
        {
            return Json(new { success = false, message = "You have reached the maximum number of attempts for this exam." });
        }

        // If within the allowed number of attempts, return success
        return Json(new { success = true });
    }
    [HttpGet]
    public IActionResult ExamDetail(int id)
    {
        var classID = Convert.ToInt32(HttpContext.Session.GetString("ClassId"));

        //if (HttpContext.Session.GetString("QuizSubmitted") == "true")
        //{
        //    var message = "You have reached the maximum number of attempts for this exam.";
        //    // You might want to use TempData to pass the message to the view
        //    TempData["Message"] = message;
        //    return RedirectToAction("Index", "Class", new { id = classID });
        //}
        var exam = _context.Exams.FirstOrDefault(e => e.ExamId == id);
        if (exam == null)
        {
            return NotFound();
        }

        int questionCount = exam.QuestionCount ?? 0;
        int questionTime = exam.TimeCount ?? 0;

        var questions = _context.Questions
            .Include(e => e.Exam)
            .Include(e => e.ExamKnowledge)
            .Where(e => e.ExamId == id)
            .Take(questionCount)
            .ToList();

        var questionIds = questions.Select(q => q.ExamKnowledgeId).ToList();

        var answers = _context.AnswerOptions
            .Where(a => questionIds.Contains((int)a.ExamKnowledgeId))
            .ToList();

        var keyCounts = new Dictionary<int, int>();
        foreach (var question in questions)
        {
            var questionAnswers = answers.Where(a => a.ExamKnowledgeId == question.ExamKnowledgeId);
            int keyCount = questionAnswers.Count(a => (bool)a.IsKey);
            keyCounts.Add(question.ExamKnowledgeId, keyCount);
        }

        ViewBag.ExamName = exam.ExamName;
        ViewBag.QuestionTime = questionTime;
        ViewBag.ExamID = id;
        ViewBag.QuestionCount = questionCount;
        ViewBag.Questions = questions;
        ViewBag.Answers = answers;
        ViewBag.KeyCounts = keyCounts;

        return View();
    }

    [HttpPost]
    public IActionResult SubmitExam(int examID,
        Dictionary<int, List<int>> selectedAnswers,
        string remainingTime)
    {
        HttpContext.Session.SetString("QuizSubmitted", "true");
        var accountId = Convert.ToInt32(HttpContext.Session.GetString("accId"));
        var exam = _context.Exams.FirstOrDefault(e => e.ExamId == examID);
        int questionCount = exam.QuestionCount ?? 0;
        double score = 0;

        var answerOptionIds = selectedAnswers.Values.SelectMany(ids => ids).ToList();
        var answerOptions = _context.AnswerOptions
            .Where(o => answerOptionIds.Contains(o.AnswerOptionId))
            .ToList();
        if (answerOptions == null)
        {
            return RedirectToAction("Error");
        }
        var answerOptionsByKnowledge = answerOptions.GroupBy(o => o.ExamKnowledgeId);
        foreach (var knowledgeGroup in answerOptionsByKnowledge)
        {
            bool allCorrect = true;
            foreach (var answer in knowledgeGroup)
            {
                if (!(bool)answer.IsKey)
                {
                    allCorrect = false;
                    break;
                }
            }
            if (allCorrect)
            {
                score++;
            }
        }
        double defaultScore = 10.0; // Điểm mặc định
        double percentage = (double)score / questionCount * 100; // Tính tỉ lệ phần trăm
        double actualScore2 = defaultScore * (percentage / 100); // Tính số điểm thực tế   
        double actualScore = Math.Round(actualScore2, 2);
        ViewBag.Score = actualScore;
        List<int> selectedAnswerIds = selectedAnswers.Keys.ToList();
        string jsonIds = JsonConvert.SerializeObject(selectedAnswerIds);
        List<List<int>> selectedAnswerValues = selectedAnswers.Values.ToList();
        string jsonValues = JsonConvert.SerializeObject(selectedAnswerValues);

        TempData["SelectedAnswerIds"] = jsonIds;
        TempData["SelectedAnswerValues"] = jsonValues;
        int remainingTimeInSeconds = 90 * 60;
        try
        {
            dynamic remainingTimeObject = JsonConvert.DeserializeObject(remainingTime);
            if (remainingTimeObject != null && remainingTimeObject.minutes != null && remainingTimeObject.seconds != null)
            {
                int remainingMinutes = Convert.ToInt32(remainingTimeObject.minutes);
                int remainingSeconds = Convert.ToInt32(remainingTimeObject.seconds);
                remainingTimeInSeconds = remainingMinutes * 60 + remainingSeconds;
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Lỗi khi lấy thời gian còn lại từ dữ liệu đầu vào: " + ex.Message);
        }
        string formattedRemainingTime = $"{remainingTimeInSeconds / 60}:{remainingTimeInSeconds % 60:00}";
        TempData["FormattedRemainingTime"] = formattedRemainingTime;
        TimeZoneInfo cstZone = TimeZoneInfo.FindSystemTimeZoneById("SE Asia Standard Time"); // Múi giờ của Đông Dương (UTC+7)
        DateTime timeNow = TimeZoneInfo.ConvertTimeFromUtc(DateTime.UtcNow, cstZone);

        // Tạo đối tượng ExamResult và thêm completionTime
        var examResult = new ExamResult
        {
            AccountId = accountId,
            ExamId = examID,
            Score = actualScore,
            RemainingTime = remainingTimeInSeconds,
            CompletionTime = timeNow
        };


        // Lưu ExamResult vào cơ sở dữ liệu
        _context.ExamResults.Add(examResult);
        _context.SaveChanges();

        // Tạo đối tượng ExamResultReview và thêm vào cơ sở dữ liệu
        var examResultReview = new ExamResultReview
        {
            ExamId = examID,
            SelectedAnswerIds = jsonIds,
            SelectedAnswerValues = jsonValues,
            ExamResultId = examResult.ExamResultId
        };
        _context.ExamResultReviews.Add(examResultReview);
        _context.SaveChanges();

        return RedirectToAction("Result", new { score = actualScore, examID = examID });
    }


    [HttpGet]
    public IActionResult Result(double score, int examID)
    {
        var classID = Convert.ToInt32(HttpContext.Session.GetString("ClassId"));
        ViewBag.ClassId = classID;
        string formattedRemainingTime = TempData["FormattedRemainingTime"] as string;
        ViewBag.Score = score;
        ViewBag.FormattedRemainingTime = formattedRemainingTime;
        ViewBag.ExamID = examID;
        TempData["ExamID"] = examID;
        return View();
    }
    [HttpGet]
    public IActionResult ResultDetail()
    {
        int examID = Convert.ToInt32(TempData["ExamID"]);
        var classID = Convert.ToInt32(HttpContext.Session.GetString("ClassId"));
        ViewBag.ClassId = classID;
        string jsonIds = TempData["SelectedAnswerIds"] as string;
        string jsonValues = TempData["SelectedAnswerValues"] as string;

        List<int> selectedAnswersIds = JsonConvert.DeserializeObject<List<int>>(jsonIds);
        List<List<int>> selectedAnswersValues = JsonConvert.DeserializeObject<List<List<int>>>(jsonValues);
        var examConfig = _context.Exams.FirstOrDefault(e => e.ExamId == examID);
        if (examConfig != null)
        {
            int questionCount = examConfig.QuestionCount ?? 0;
            var questions = _context.Questions
                .Include(e => e.Exam)
                .Include(e => e.ExamKnowledge).Where(e => e.ExamId == examID).Take(questionCount).ToList();
            var questionIds = questions.Select(q => q.ExamKnowledgeId).ToList();
            var answers = _context.AnswerOptions
                .Where(a => questionIds.Contains((int)a.ExamKnowledgeId))
                .ToList();
            ViewBag.ExamID = examID;
            ViewBag.QuestionCount = questionCount;
            ViewBag.Questions = questions;
            ViewBag.Answers = answers;
            ViewBag.SelectedAnswerIds = selectedAnswersIds;
            ViewBag.SelectedAnswerValues = selectedAnswersValues;
        }
        else
        {
            ViewBag.QuestionCount = 0;
            ViewBag.Questions = null;
            ViewBag.Answers = null;
        }
        return View();
    }
    [HttpGet]
    public IActionResult ReviewExam(int examID, int examResultId)
    {
        var classID = Convert.ToInt32(HttpContext.Session.GetString("ClassId"));
        ViewBag.ClassId = classID;
        var erv = _context.ExamResultReviews
                .Where(er => er.ExamId == examID && er.ExamResultId == examResultId)
                .FirstOrDefault();
        string jsonIds = erv.SelectedAnswerIds;
        string jsonValues = erv.SelectedAnswerValues;
        List<int> selectedAnswersIds = JsonConvert.DeserializeObject<List<int>>(jsonIds);
        List<List<int>> selectedAnswersValues = JsonConvert.DeserializeObject<List<List<int>>>(jsonValues);
        var examConfig = _context.Exams.FirstOrDefault(e => e.ExamId == examID);
        if (examConfig != null)
        {
            int questionCount = examConfig.QuestionCount ?? 0;
            var questions = _context.Questions
                .Include(e => e.Exam)
                .Include(e => e.ExamKnowledge).Where(e => e.ExamId == examID).Take(questionCount).ToList();
            var questionIds = questions.Select(q => q.ExamKnowledgeId).ToList();
            var answers = _context.AnswerOptions
                .Where(a => questionIds.Contains((int)a.ExamKnowledgeId))
                .ToList();
            ViewBag.ExamID = examID;
            ViewBag.QuestionCount = questionCount;
            ViewBag.Questions = questions;
            ViewBag.Answers = answers;
            ViewBag.SelectedAnswerIds = selectedAnswersIds;
            ViewBag.SelectedAnswerValues = selectedAnswersValues;
        }
        else
        {
            ViewBag.QuestionCount = 0;
            ViewBag.Questions = null;
            ViewBag.Answers = null;
        }
        return View();
    }
    [HttpDelete]
    [ValidateAntiForgeryToken]
    public IActionResult DeleteExam(int id)
    {
        var exam = _context.Exams
                           .Include(e => e.ExamResultReviews)
                           .Include(e => e.ExamResults)
                           .Include(e => e.Questions)
                           .FirstOrDefault(e => e.ExamId == id);

        if (exam == null)
        {
            return Json(new { success = false, message = "Exam not found." });
        }

        if (exam.ExamResultReviews != null && exam.ExamResultReviews.Any())
        {
            _context.ExamResultReviews.RemoveRange(exam.ExamResultReviews);
        }

        if (exam.ExamResults != null && exam.ExamResults.Any())
        {
            _context.ExamResults.RemoveRange(exam.ExamResults);
        }

        if (exam.Questions != null && exam.Questions.Any())
        {
            _context.Questions.RemoveRange(exam.Questions);
        }

        _context.Exams.Remove(exam);
        _context.SaveChanges();

        return Json(new { success = true, message = "Exam deleted successfully." });
    }

}


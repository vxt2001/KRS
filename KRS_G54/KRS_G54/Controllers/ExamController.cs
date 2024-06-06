using KRS_G54.Filters;
using KRS_G54.Models;
using KRS_G54.Repository.IRepsitory;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Text.Json;
using X.PagedList;

namespace KRS_G54.Controllers
{
 
	public class ExamController : Controller
    {
        private readonly abcContext _context;
        private readonly IUserQuestionRepository repo;
        public ExamController(abcContext context, IUserQuestionRepository Repo)
        {
            _context = context;
            repo = Repo;
        }
        public IActionResult ExamList(int? page)
        {
            var accountId = Convert.ToInt32(HttpContext.Session.GetString("accId"));
            var exams = _context.UserExams.Where(ue => ue.UserId == accountId).ToList();

            int pageSize = 12; // Số lượng flashcard trên mỗi trang
            int pageNumber = (page ?? 1); // Số trang hiện tại (mặc định là trang 1)
            // Đưa danh sách flashcard vào IPagedList
            var paged = exams.ToPagedList(pageNumber, pageSize);

            if (paged.Count == 0)
            {
                ViewBag.NoExamFound = true;
            }
            var examResultsDict = new Dictionary<int, List<ExamResult>>();

            // Lặp qua mỗi bài kiểm tra để lấy kết quả tương ứng của accountId
            foreach (var exam in exams)
            {
                var examResults = _context.ExamResults
                    .Where(er => er.UserExamId == exam.Ueid && er.AccountId == accountId)
                    .ToList();

                // Thêm danh sách kết quả vào Dictionary
                examResultsDict.Add(exam.Ueid, examResults);
            }

            // Gửi danh sách bài kiểm tra và kết quả đến view
            ViewBag.ExamResults = examResultsDict;
            return View(paged); // Trả về danh sách flashcard dưới dạng IPagedList
        }
        public IActionResult Index()
        {
            var subjectList = _context.Subjects.ToList();
            ViewBag.SubjectList = subjectList;
            return View();
        }
        public IActionResult Add()
        {
            var subjectList = _context.Subjects.ToList();
            ViewBag.SubjectList = subjectList;
            return View();
        }
        [HttpGet]
        public JsonResult GetLessonsBySubjectId(int subjectId)
        {
            var lessons = _context.Lessons
                                  .Where(l => l.SubjectId == subjectId)
                                  .Select(l => new
                                  {
                                      l.LessonId,
                                      // Cắt chuỗi topic nếu độ dài của nó lớn hơn 50 ký tự
                                      Topic = l.Topic.Length > 100 ? l.Topic.Substring(0, 100) + "..." : l.Topic
                                  })
                                  .ToList();
            return Json(lessons);
        }

        [HttpPost]
        public IActionResult Delete(int ueid)
        {
            DeleteUserExam(ueid);
            return Json(new { success = true });
        }
        private void DeleteUserExam(int ueid)
        {
            // Retrieve and delete UserQuestions related to the given ueid
            var userQuestions = _context.UserQuestions.Where(uq => uq.Ueid == ueid).ToList();
            if (userQuestions.Any())
            {
                _context.UserQuestions.RemoveRange(userQuestions);
            }

            // Retrieve and delete ExamResults related to the given ueid
            var examResults = _context.ExamResults.Where(er => er.UserExamId == ueid).ToList();
            if (examResults.Any())
            {
                _context.ExamResults.RemoveRange(examResults);
            }

            // Retrieve and delete ExamResultReviews related to the given ueid
            var examResultReviews = _context.ExamResultReviews.Where(err => err.UeId == ueid).ToList();
            if (examResultReviews.Any())
            {
                _context.ExamResultReviews.RemoveRange(examResultReviews);
            }

            // Retrieve and delete the UserExam related to the given ueid, if it exists
            var userExam = _context.UserExams.FirstOrDefault(ue => ue.Ueid == ueid);
            if (userExam != null)
            {
                _context.UserExams.Remove(userExam);
            }

            // Save changes to the database if any deletions were made
            if (userQuestions.Any() || examResults.Any() || examResultReviews.Any() || userExam != null)
            {
                _context.SaveChanges();
            }
        }

        [HttpPost]
        public ActionResult AddNewExam([FromBody] JsonElement postData)
        {
            int totalQuestions = 0;
            if (!int.TryParse(HttpContext.Session.GetString("accId"), out int userId))
            {
                return BadRequest("Invalid user id.");
            }
            string examName = "";
            if (postData.TryGetProperty("ExamName", out var examNameElement) && examNameElement.ValueKind == JsonValueKind.String)
            {
                examName = examNameElement.GetString();
            }
            var lessonDictionary = new Dictionary<int, int>();
            if (postData.TryGetProperty("Lessons", out var lessonsElement) && lessonsElement.ValueKind == JsonValueKind.Array)
            {
                foreach (var lesson in lessonsElement.EnumerateArray())
                {
                    if (lesson.TryGetProperty("LessonId", out var lessonIdElement) && lessonIdElement.ValueKind == JsonValueKind.String &&
                        lesson.TryGetProperty("NumberOfQuestions", out var numberOfQuestionsElement) && numberOfQuestionsElement.ValueKind == JsonValueKind.String)
                    {
                        int lessonId = int.Parse(lessonIdElement.GetString());
                        int numberOfQuestions = int.Parse(numberOfQuestionsElement.GetString());
                        lessonDictionary.Add(lessonId, numberOfQuestions);
                        totalQuestions += numberOfQuestions;
                    }
                    else
                    {
                        return BadRequest("Invalid format for lesson.");
                    }
                }
                List<int> allKnowledgeIds = new List<int>();
                foreach (var item in lessonDictionary)
                {
                    int numQuestions = item.Value; // Đã biết item.Value là một số nguyên
                    var knowledgeIds = _context.ExamKnowledges
                        .Where(k => k.LessonId == item.Key)
                        .Select(k => k.ExamKnowledgeId)
                        .ToList();

                    // Kiểm tra xem có đủ số câu hỏi không
                    if (knowledgeIds.Count < numQuestions)
                    {
                        return BadRequest("Not enough knowledge IDs for the requested number of questions.");
                    }

                    // Ngẫu nhiên chọn các knowledge IDs từ danh sách knowledgeIds
                    var randomKnowledgeIds = knowledgeIds.OrderBy(x => Guid.NewGuid()).Take(numQuestions).ToList();

                    totalQuestions += numQuestions;
                    allKnowledgeIds.AddRange(randomKnowledgeIds);
                }

                var userExam = new UserExam
                {
                    UserId = userId,
                    ExamName = examName
                };
                _context.Add(userExam);
                _context.SaveChanges();

                var ueid = _context.UserExams
                  .Where(x => x.Ueid == userExam.Ueid)
                  .Select(x => x.Ueid)
                  .FirstOrDefault();
                try
                {
                    var userQuestions = allKnowledgeIds.Select(item => new UserQuestion
                    {
                        UserId = userId,
                        Ueid = ueid,
                        ExamKnowledgeId = item
                    }).ToList();
                    if (userQuestions.Any())
                    {
                        _context.AddRange(userQuestions);
                        _context.SaveChanges();                   
                    }
                    else { return BadRequest("Invalid exam data format."); }
                    var examQuestionCount = userQuestions.Count(x=>x.Ueid == ueid);
                     userExam.QuestionCount = examQuestionCount;
                    _context.SaveChanges();

                    return Json(new { success = true, ueid = userExam.Ueid });
                }
                catch (Exception ex)
                {
                    return StatusCode(500, $"Internal server error: {ex.Message}");
                }

            }
            return RedirectToAction("Index");

        }
        [HttpGet]
        [Route("api/lesson/{lessonId}/knowledgeCount")]
        public IActionResult GetKnowledgeCount(int LessonId)
        {
            var knowledgeCount = _context.ExamKnowledges.Count(k => k.LessonId == LessonId);
            return Ok(knowledgeCount);
        }
        [HttpPost]
        public async Task<IActionResult> SubmitQuizData([FromBody] JsonElement postData)
        {
            int totalQuestions = 0;
            if (!int.TryParse(HttpContext.Session.GetString("accId"), out int userId))
            {
                return BadRequest("Invalid user id.");
            }

            string examName = "";
            if (postData.TryGetProperty("examName", out var examNameElement) && examNameElement.ValueKind == JsonValueKind.String)
            {
                examName = examNameElement.GetString();
            }
            else
            {
                return BadRequest("Exam name is missing or invalid.");
            }

            if (postData.TryGetProperty("quizData", out var quizDataElement) && quizDataElement.ValueKind == JsonValueKind.Array)
            {
                var quizDataList = new List<Dictionary<string, string>>();

                foreach (var item in quizDataElement.EnumerateArray())
                {
                    if (item.ValueKind == JsonValueKind.Object)
                    {
                        var itemDict = new Dictionary<string, string>();
                        foreach (var property in item.EnumerateObject())
                        {
                            itemDict.Add(property.Name, property.Value.GetString());
                        }
                        quizDataList.Add(itemDict);
                    }
                }
                List<int> allKnowledgeIds = new List<int>();
                List<int> randomKnowledgeIds = new List<int>();
                foreach (var item in quizDataList)
                {
                    if (item.TryGetValue("subjectName", out string subjectName)
                        && item.TryGetValue("numQuestions", out string numQuestionsStr))
                    {
                        var subject = _context.Subjects.
                            FirstOrDefault(s => s.SubjectName == subjectName);
                        int subjectId = subject.SubjectId;
                        var knowledgeIds = _context.ExamKnowledges.Where(k => k.SubjectId == subjectId)
                                           .Select(k => k.ExamKnowledgeId)
                                           .ToList();
                        if (int.TryParse(numQuestionsStr, out int numQuestions))
                        {
                            randomKnowledgeIds = knowledgeIds
                               .OrderBy(x => Guid.NewGuid())
                               .Take(numQuestions).ToList();
                            totalQuestions += numQuestions;
                            allKnowledgeIds.AddRange(randomKnowledgeIds);
                        }
                        else
                        {
                            return BadRequest("Invalid number of questions.");
                        }
                    }
                    else
                    {
                        return BadRequest("Quiz data is missing required fields.");
                    }
                }
                var userExam = new UserExam
                {
                    UserId = userId,
                    QuestionCount = totalQuestions,
                    ExamName = examName,
                };
                _context.Add(userExam);
                _context.SaveChanges();

                var ueid = _context.UserExams
                  .Where(x => x.ExamName == examName)
                  .Select(x => x.Ueid)
                  .FirstOrDefault();
                try
                {
                    var userQuestions = allKnowledgeIds.Select(item => new UserQuestion
                    {
                        UserId = userId,
                        Ueid = ueid,
                        ExamKnowledgeId = item
                    }).ToList();
                    if (userQuestions.Any())
                    {
                        _context.AddRange(userQuestions);
                        await _context.SaveChangesAsync();
                    }
                    else { return BadRequest("Invalid exam data format."); }
                    return Ok();
                }
                catch (Exception ex)
                {
                    return StatusCode(500, $"Internal server error: {ex.Message}");
                }
            }
            else { return BadRequest("Invalid exam data format."); }

        }
        [HttpGet]
        public IActionResult ExamDetail(int id)
        {
            var exam = _context.UserExams.FirstOrDefault(e => e.Ueid == id);
            int questionCount = exam.QuestionCount ?? 0;
            var questions = _context.UserQuestions
                .Include(e => e.Ue)
                .Include(e => e.ExamKnowledge)
                .Where(e => e.Ueid == id)
                .Take(questionCount)
                .ToList();
            var questionIds = questions.Select(q => q.ExamKnowledgeId).ToList();
            var answers = _context.AnswerOptions
                .Where(a => questionIds.Contains((int)a.ExamKnowledgeId))
                .ToList();

            // Dictionary to store keyCount for each question
            var keyCounts = new Dictionary<int, int>();
            foreach (var question in questions)
            {
                var questionAnswers = answers.Where(a => a.ExamKnowledgeId == question.ExamKnowledgeId);

                // Calculate keyCount for each question
                int keyCount = questionAnswers.Count(a => (bool)a.IsKey);
                keyCounts.Add((int)question.ExamKnowledgeId, keyCount);
            }

            int examID = id;
            var examName = _context.UserExams
                            .Where(x => x.Ueid == examID)
                            .Select(x => x.ExamName)
                            .FirstOrDefault();
            ViewBag.ExamName = examName;
            ViewBag.ExamID = examID;
            ViewBag.QuestionCount = questionCount;
            ViewBag.Questions = questions;
            ViewBag.Answers = answers;
            ViewBag.KeyCounts = keyCounts;
            return View();
        }

        [HttpPost]
        public IActionResult SubmitExam(int examID, Dictionary<int, List<int>> selectedAnswers, string remainingTime)
        {
            var accountId = Convert.ToInt32(HttpContext.Session.GetString("accId"));
            var exam = _context.UserExams.FirstOrDefault(e => e.Ueid == examID);
            int questionCount = exam.QuestionCount ?? 0;
            double score = 0;


            // Lấy ra danh sách các AnswerOptionId từ selectedAnswers
            var answerOptionIds = selectedAnswers.Values.SelectMany(ids => ids).ToList();

            // Tìm các AnswerOption tương ứng với các AnswerOptionId đã chọn
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
            // Lưu các đáp án đã chọn vào TempData
            List<int> selectedAnswerIds = selectedAnswers.Keys.ToList();
            string jsonIds = JsonConvert.SerializeObject(selectedAnswerIds);
            TempData["SelectedAnswerIds"] = jsonIds;

            // Lưu các giá trị của các đáp án đã chọn vào TempData
            List<List<int>> selectedAnswerValues = selectedAnswers.Values.ToList();
            string jsonValues = JsonConvert.SerializeObject(selectedAnswerValues);
            TempData["SelectedAnswerValues"] = jsonValues;

            var examResult = new ExamResult
            {
                // Assuming you have access to AccountId and UserExamId from the current session or context
                AccountId = accountId,
                UserExamId = examID,
                Score = actualScore,
                CompletionTime = DateTime.Now
            };
            _context.ExamResults.Add(examResult);
            _context.SaveChanges();
            var examResultReview = new ExamResultReview
            {
                UeId = examID,
                SelectedAnswerIds = jsonIds,
                SelectedAnswerValues = jsonValues,
                ExamResultId = examResult.ExamResultId
            };
            _context.ExamResultReviews.Add(examResultReview);
            _context.SaveChanges();
            return RedirectToAction("UEResult", new { score = actualScore, examID = examID });
        }

        [HttpGet]
        public IActionResult UEResult(double score, int examID)
        {
            var classID = Convert.ToInt32(HttpContext.Session.GetString("ClassId"));
            ViewBag.ClassId = classID;
            string formattedRemainingTime = TempData["FormattedRemainingTime"] as string;
            ViewBag.Score = score;
            ViewBag.ExamID = examID;
            ViewBag.FormattedRemainingTime = formattedRemainingTime;
            TempData["ExamID"] = examID;
            return View();
        }
        [HttpGet]
        public IActionResult UEResultDetail()
        {
            int examID = Convert.ToInt32(TempData["ExamID"]);
            var classID = Convert.ToInt32(HttpContext.Session.GetString("ClassId"));
            ViewBag.ClassId = classID;
            ///
            string jsonIds = TempData["SelectedAnswerIds"] as string;
            List<int> selectedAnswersIds = JsonConvert.DeserializeObject<List<int>>(jsonIds);
            ///
            string jsonValues = TempData["SelectedAnswerValues"] as string;
            List<List<int>> selectedAnswersValues = JsonConvert.DeserializeObject<List<List<int>>>(jsonValues);
            var exam = _context.UserExams.FirstOrDefault(e => e.Ueid == examID);
            int questionCount = (int)exam.QuestionCount;
            var questions = _context.UserQuestions
                .Include(e => e.Ue)
                .Include(e => e.ExamKnowledge)
                .Where(e => e.Ueid == examID)
                .Take(questionCount)
                .ToList();
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
            return View();
        }
        [HttpGet]
        public IActionResult UEReviewExam(int examID, int examResultId)
        {
            var classID = Convert.ToInt32(HttpContext.Session.GetString("ClassId"));
            ViewBag.ClassId = classID;
            var erv = _context.ExamResultReviews
                    .Where(er => er.UeId == examID && er.ExamResultId == examResultId)
                    .FirstOrDefault();
            string jsonIds = erv.SelectedAnswerIds;
            string jsonValues = erv.SelectedAnswerValues;
            List<int> selectedAnswersIds = JsonConvert.DeserializeObject<List<int>>(jsonIds);
            List<List<int>> selectedAnswersValues = JsonConvert.DeserializeObject<List<List<int>>>(jsonValues);
            var exam = _context.UserExams.FirstOrDefault(e => e.Ueid == examID);
            int questionCount = (int)exam.QuestionCount;
            var questions = _context.UserQuestions
                .Include(e => e.Ue)
                .Include(e => e.ExamKnowledge)
                .Where(e => e.Ueid == examID)
                .Take(questionCount)
                .ToList();
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
            return View();
        }
    }
}
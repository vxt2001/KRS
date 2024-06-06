using KRS_G54.Filters;
using KRS_G54.Models;
using KRS_G54.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Collections;
using System.Linq;
using System.Text.Json;
using X.PagedList;

namespace KRS_G54.ViewModels
{
    public class ExamViewModel
    {
        public int ExamId { get; set; }
        public string ExamName { get; set; }
        public List<QuestionViewModel> Questions { get; set; }
    }

    public class QuestionViewModel
    {
        public int KnowledgeId { get; set; }
        public string KnowledgeName { get; set; }
        public List<AnswerViewModel> Answers { get; set; }
    }

    public class AnswerViewModel
    {
        public string AnswerOption1 { get; set; }
        public bool IsKey { get; set; }
    }
}
namespace KRS_G54.Areas.Manager.Controllers
{
    [ServiceFilter(typeof(ManagerRoleAttribute))]
    [Area("Manager")]
    public class ExamController : Controller
    {
        private readonly abcContext _context;

        public ExamController(abcContext context)
        {
            _context = context;
        }

        private void SetViewBags()
        {
            ViewBag.Listclass = _context.Classes.Where(x => x.Status == true).ToList();
            ViewBag.ListSubject = _context.Subjects.Where(x => x.Status == true).ToList();
        }

        public IActionResult Index(int? page)
        {
            SetViewBags();
            var pageNumber = page ?? 1;
            var pageSize = 10;
            var exams = _context.Exams.Include(e => e.Subject).Include(c => c.Class).ToList();
            var pagedExams = exams.ToPagedList(pageNumber, pageSize);
            return View(pagedExams);
        }

        public IActionResult FilterBySubject(int? subjectId, int? page)
        {
            SetViewBags();
            var pageNumber = page ?? 1;
            var pageSize = 10;
            var exams = _context.Exams.Include(e => e.Subject).Include(c => c.Class).ToList();
            if (subjectId.HasValue)
            {
                exams = exams.Where(e => e.SubjectId == subjectId.Value).ToList();
            }
            var pagedExams = exams.ToPagedList(pageNumber, pageSize);
            return View("Index", pagedExams);
        }

        public IActionResult FilterByClass(int? classId, int? page)
        {
            SetViewBags();
            var pageNumber = page ?? 1;
            var pageSize = 10;
            var exams = _context.Exams.Include(e => e.Subject).Include(c => c.Class).ToList();
            if (classId.HasValue)
            {
                exams = exams.Where(e => e.ClassId == classId.Value).ToList();
            }
            var pagedExams = exams.ToPagedList(pageNumber, pageSize);
            return View("Index", pagedExams);
        }

        public IActionResult Search(string searchString, int? page)
        {
            SetViewBags();
            var pageNumber = page ?? 1;
            var pageSize = 10;
            var exams = _context.Exams.Include(e => e.Subject).Include(c => c.Class).ToList();
            if (!string.IsNullOrEmpty(searchString))
            {
                exams = exams.Where(e => e.ExamName.IndexOf(searchString, StringComparison.OrdinalIgnoreCase) >= 0).ToList();
            }
            var pagedExams = exams.ToPagedList(pageNumber, pageSize);
            return View("Index", pagedExams);
        }
        public IActionResult ListQuestion(int? id)
        {
            if (id != null)
            {
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


        public IActionResult Create()
        {
            ViewBag.ListSubject = _context.Subjects.Where(x => x.Status == true).OrderByDescending(x => x.SubjectId).ToList();
            ViewBag.ListClass = _context.Classes.Where(x => x.Status == true).OrderByDescending(x => x.ClassId).ToList();
            return View();
        }

        [HttpPost]
        public int Create(Exam data)
        {
            try
            {
                _context.Exams.Add(data);
                _context.SaveChanges();
                return data.ExamId;
            }
            catch
            {
                return -1;
            }
        }
        public IActionResult Edit(int id)
        {
            var exam = _context.Exams.Find(id); // Fetch the exam from the database
            ViewBag.ListClass = _context.Classes.ToList(); // Fetch the list of classes
            ViewBag.ListSubject = _context.Subjects.ToList(); // Fetch the list of subjects

            return View(exam);
        }

        [HttpPost]
        public IActionResult Edit(Exam exam)
        {
            if (ModelState.IsValid)
            {
                _context.Exams.Update(exam);
                _context.SaveChanges();
                return RedirectToAction("Index"); // Redirect to the exam list or details page
            }
            ViewBag.ListClass = _context.Classes.ToList();
            ViewBag.ListSubject = _context.Subjects.ToList();
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
            ViewBag.Exam = exam;
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
            ViewBag.SelectedExamId = id;
            ViewBag.ListQuestion = examViewModel.Questions;

            return View(examViewModel);
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
                    if (string.IsNullOrWhiteSpace(knowledge.KnowledgeName)
                        || knowledge.KnowledgeName == "0" || knowledge.KnowledgeId == 0)
                    {
                        continue;
                    }

                    ExamKnowledge existingKnowledge = null;
                    if (knowledge.KnowledgeId != 0)
                    {
                        existingKnowledge = _context.ExamKnowledges
                            .Include(k => k.AnswerOptions)
                            .FirstOrDefault(k => k.ExamKnowledgeId == knowledge.KnowledgeId);
                    }

                    if (existingKnowledge != null)
                    {
                        // Update existing knowledge
                        existingKnowledge.Knowledge = knowledge.KnowledgeName;

                        _context.AnswerOptions.RemoveRange(existingKnowledge.AnswerOptions);

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

                        var keyAnswers = knowledge.Answers
                            .Where(a => a.IsKey)
                            .Select(a => a.AnswerOption1)
                            .ToList();
                        existingKnowledge.Answer = string.Join("", keyAnswers);
                    }
                    else
                    {
                        var kl = new ExamKnowledge
                        {
                            Knowledge = knowledge.KnowledgeName,
                        };
                        _context.ExamKnowledges.Add(kl);
                        _context.SaveChanges();

                        var question = new Question
                        {
                            ExamId = data.ExamId,
                            ExamKnowledgeId = kl.ExamKnowledgeId
                        };
                        _context.Questions.Add(question);
                        _context.SaveChanges();

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
                            .Select(a => a.AnswerOption1)
                            .ToList();
                        kl.Answer = string.Join("", keyAnswers);
                    }
                }

                var exam = _context.Exams.FirstOrDefault(e => e.ExamId == data.ExamId);
                if (exam != null)
                {
                    exam.QuestionCount = _context.Questions.Count(q => q.ExamId == data.ExamId);
                }

                _context.SaveChanges();
                return Ok(true);
            }
            catch (Exception ex)
            {
                var errorMessage = $"Error: {ex.Message}";
                if (ex.InnerException != null)
                {
                    errorMessage += $", Inner Exception: {ex.InnerException.Message}";
                }
                return BadRequest(errorMessage);
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
                    var question = new Question
                    {
                        ExamId = data.ExamId,
                        ExamKnowledgeId = kl.ExamKnowledgeId
                    };
                    _context.Questions.Add(question);
                    _context.SaveChanges(); // Lưu lại để lấy được QuestionId

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
            public int ExamKnowledgeId { get; internal set; }
        }

        public class AnswerOptionData
        {
            public string AnswerOption1 { get; set; }
            public bool IsKey { get; set; }
        }
        [HttpPost]
        public IActionResult Delete(int id)
        {
            try
            {
                // Log the received ID
                Console.WriteLine("Received ID: " + id);

                // Fetch the exam to delete
                var exam = _context.Exams.Include(e => e.Questions)
                                         .ThenInclude(q => q.ExamKnowledge)
                                         .FirstOrDefault(e => e.ExamId == id);

                // Check if the exam was found
                if (exam == null)
                {
                    Console.WriteLine("Exam not found.");
                    return Json(new { success = false, message = "Exam not found." });
                }

                // Log fetching exam success
                Console.WriteLine("Exam found. Proceeding with deletion.");

                // Remove associated ExamResultReviews
                var examResultReviews = _context.ExamResultReviews.Where(err => err.ExamId == id).ToList();
                if (examResultReviews.Any())
                {
                    _context.ExamResultReviews.RemoveRange(examResultReviews);
                    Console.WriteLine($"{examResultReviews.Count} exam result reviews deleted.");
                }

                // Remove associated ExamResults
                var examResults = _context.ExamResults.Where(er => er.ExamId == id).ToList();
                if (examResults.Any())
                {
                    _context.ExamResults.RemoveRange(examResults);
                    Console.WriteLine($"{examResults.Count} exam results deleted.");
                }

                // Remove questions associated with the exam but keep the knowledge in the database
                if (exam.Questions.Any())
                {
                    _context.Questions.RemoveRange(exam.Questions);
                    Console.WriteLine($"{exam.Questions.Count} questions deleted.");
                }

                // Remove the exam
                _context.Exams.Remove(exam);
                _context.SaveChanges();

                // Log success message
                Console.WriteLine("Exam deleted successfully.");
                return Json(new { success = true, message = "Exam deleted successfully." });
            }
            catch (Exception ex)
            {
                // Log the error message
                Console.WriteLine("Error deleting exam: " + ex.Message);
                return Json(new { success = false, message = "An error occurred while deleting the exam." });
            }
        }
    }
}

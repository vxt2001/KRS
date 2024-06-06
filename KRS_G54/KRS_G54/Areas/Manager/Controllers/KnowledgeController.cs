using KRS_G54.Filters;
using KRS_G54.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using X.PagedList;

namespace KRS_G54.Areas.Manager.Controllers
{
    [ServiceFilter(typeof(ManagerRoleAttribute))]
    [Area("Manager")]
    public class KnowledgeController : Controller
    {
        private readonly abcContext _context;

        public KnowledgeController(abcContext context)
        {
            _context = context;
        }

        public IActionResult Index(string searchString, int? page)
        {
            int pageSize = 10; // Number of items per page
            int pageNumber = page ?? 1;

            var knowledges = _context.ExamKnowledges
                .Include(k => k.Subject)
                .Include(k => k.Lesson)
                .AsQueryable();

            if (!string.IsNullOrEmpty(searchString))
            {
                knowledges = knowledges.Where(k => k.Knowledge.Contains(searchString));
            }

            var pagedKnowledges = knowledges.ToPagedList(pageNumber, pageSize);

            ViewBag.CurrentSearch = searchString;
            return View(pagedKnowledges);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(Knowledge knowledge)
        {
            if (ModelState.IsValid)
            {
                _context.Knowledges.Add(knowledge);
                _context.SaveChanges();
                return RedirectToAction(nameof(Index));
            }
            return View(knowledge);
        }

        public IActionResult Edit(int knowledgeId)
        {
            var knowledgeItem = _context.AnswerOptions
                .Include(k => k.ExamKnowledge)
                .Where(k => k.ExamKnowledgeId == knowledgeId)
                .ToList();

            if (knowledgeItem == null || !knowledgeItem.Any())
            {
                return NotFound();
            }

            return View(knowledgeItem);
        }


        [HttpPost]
        public IActionResult Edit(int knowledgeId, List<AnswerOption> answerOptions)
        {
            if (answerOptions == null || !answerOptions.Any())
            {
                return NotFound("No answer options provided.");
            }

            if (knowledgeId != answerOptions.First().ExamKnowledgeId)
            {
                return BadRequest("Knowledge ID mismatch.");
            }

            if (ModelState.IsValid)
            {
                try
                {
                    foreach (var option in answerOptions)
                    {
                        _context.Entry(option).State = EntityState.Modified;
                    }
                    _context.SaveChanges();
                }
                catch (DbUpdateConcurrencyException ex)
                {
                    // Log the error (uncomment ex variable name and write a log.)
                    ModelState.AddModelError("", "Unable to save changes. The answer option was updated by another user.");
                    return View(answerOptions);
                }
                catch (Exception ex)
                {
                    // Handle other potential exceptions
                    ModelState.AddModelError("", "An error occurred while saving changes. Please try again.");
                    return View(answerOptions);
                }

                return RedirectToAction(nameof(Index));
            }

            return View(answerOptions);
        }
        public async Task<IActionResult> EditLesson(int? knowledgeId)
        {
            if (knowledgeId == null)
            {
                return NotFound();
            }

            var examKnowledge = await _context.ExamKnowledges
                .Include(e => e.Lesson)
                .FirstOrDefaultAsync(m => m.ExamKnowledgeId == knowledgeId);

            if (examKnowledge == null)
            {
                return NotFound();
            }

            // Lấy danh sách các Subjects để hiển thị trong dropdown
            ViewBag.SubjectList = await _context.Subjects.ToListAsync();

            // Lấy danh sách các Lessons liên quan đến Subject của ExamKnowledge
            if (examKnowledge.Lesson != null)
            {
                ViewBag.LessonList = await _context.Lessons
                    .Where(l => l.SubjectId == examKnowledge.Lesson.SubjectId)
                    .ToListAsync();
            }
            else
            {
                ViewBag.LessonList = new List<Lesson>();
            }

            return View(examKnowledge);
        }

        public async Task<IActionResult> GetLessonsBySubject(int subjectId)
        {
            var lessons = await _context.Lessons
                .Where(l => l.SubjectId == subjectId)
                .ToListAsync();

            return Json(lessons);
        }

        [HttpPost]
        public async Task<IActionResult> EditLesson(int id, int lessonId, int subjectId)
        {
            var examKnowledge = await _context.ExamKnowledges.FindAsync(id);
            if (examKnowledge == null)
            {
                return NotFound();
            }

            var lesson = await _context.Lessons.FindAsync(lessonId);
            if (lesson == null)
            {
                return NotFound();
            }

            // Cập nhật SubjectId và LessonId cho ExamKnowledge
            examKnowledge.SubjectId = subjectId;
            examKnowledge.Lesson = lesson;

            _context.Update(examKnowledge);
            await _context.SaveChangesAsync();

            return RedirectToAction(nameof(Index));
        }


        //public async Task<IActionResult> EditLesson(int? knowledgeId)
        //{
        //    if (knowledgeId == null)
        //    {
        //        return NotFound();
        //    }

        //    // Tìm ExamKnowledge cần chỉnh sửa
        //    var examKnowledge = await _context.ExamKnowledges
        //        .Include(e => e.Lesson)
        //        .FirstOrDefaultAsync(m => m.ExamKnowledgeId == knowledgeId);

        //    if (examKnowledge == null)
        //    {
        //        return NotFound();
        //    }

        //    // Lấy danh sách các Lesson để hiển thị trong dropdown
        //    ViewBag.LessonList = _context.Lessons.ToList();

        //    return View(examKnowledge);
        //}

        //// Hành động POST để lưu thay đổi của Lesson
        //[HttpPost]

        //public async Task<IActionResult> EditLesson(int id, int lessonId)
        //{
        //    var examKnowledge = await _context.ExamKnowledges.FindAsync(id);
        //    if (examKnowledge == null)
        //    {
        //        return NotFound();
        //    }

        //    // Tìm Lesson mới dựa trên ID được chọn
        //    var lesson = await _context.Lessons.FindAsync(lessonId);
        //    if (lesson == null)
        //    {
        //        return NotFound();
        //    }

        //    // Cập nhật Lesson cho ExamKnowledge
        //    examKnowledge.Lesson = lesson;

        //    // Lưu các thay đổi vào cơ sở dữ liệu
        //    _context.Update(examKnowledge);
        //    await _context.SaveChangesAsync();

        //    return RedirectToAction(nameof(Index)); // Chuyển hướng đến trang danh sách
        //}
        [HttpPost]
        public async Task<IActionResult> Delete(int id)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    var knowledge = await _context.ExamKnowledges
                        .FirstOrDefaultAsync(k => k.ExamKnowledgeId == id);

                    if (knowledge == null)
                    {
                        return Json(new { success = false, message = "Item not found." });
                    }

                    // Find and remove related AnswerOptions
                    var answerOptions = _context.AnswerOptions
                        .Where(ao => ao.ExamKnowledgeId == id);

                    _context.AnswerOptions.RemoveRange(answerOptions);

                    // Find and remove related Questions
                    var questions = _context.Questions
                        .Where(q => q.ExamKnowledgeId == id);

                    _context.Questions.RemoveRange(questions);

                    // Remove the ExamKnowledge record
                    _context.ExamKnowledges.Remove(knowledge);

                    await _context.SaveChangesAsync();
                    await transaction.CommitAsync();

                    return Json(new { success = true });
                }
                catch (Exception ex)
                {
                    await transaction.RollbackAsync();
                    return Json(new { success = false, message = "An error occurred while deleting the item." });
                }
            }
        }
    }

}
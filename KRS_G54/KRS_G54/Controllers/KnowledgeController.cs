using System.Linq;
using Microsoft.AspNetCore.Mvc;
using KRS_G54.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using System.Text;
using NuGet.Packaging;
using X.PagedList;
using OfficeOpenXml;
using System.IO;
using System.Linq;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using KRS_G54.Filters;
using Microsoft.AspNetCore.Authorization;

namespace KRS_G54.Controllers
{

    public class KnowledgeController : Controller
    {
        private readonly abcContext _context;

        public KnowledgeController(abcContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            var knowledgeList = _context.Knowledges.Include(k => k.Subject).ToList();
            ViewData["Subjects"] = new SelectList(_context.Subjects, "SubjectId", "SubjectName");
            //return View(knowledgeList);
            return RedirectToAction(nameof(ListSubject));
        }


        public IActionResult ListSubject(string searchString, List<int?> selectedSubjects, int? page, bool listAll = false)
        {
            // Lấy danh sách các chủ đề để hiển thị trong view
            ViewBag.Subjects = _context.Subjects.ToList();

            // Lấy tất cả flashcard và kết nối với các chủ đề
            var flashcards = _context.Flashcards.Include(k => k.Subject).ToList();

            // Lọc theo tên flashcard (nếu có)
            if (!string.IsNullOrEmpty(searchString))
            {
                searchString = searchString.ToLower();
                flashcards = flashcards.Where(s => s.FlashcardName.ToLower().Contains(searchString)).ToList();
            }

            // Lọc theo các chủ đề đã chọn (nếu có và nếu không chọn "List All")
            if (!listAll && selectedSubjects != null && selectedSubjects.Any())
            {
                flashcards = flashcards.Where(s => selectedSubjects.Contains(s.SubjectId.GetValueOrDefault())).ToList();
            }

            // Phân trang
            int pageSize = 12; // Số lượng flashcard trên mỗi trang
            int pageNumber = (page ?? 1); // Số trang hiện tại (mặc định là trang 1)

            // Đưa danh sách flashcard vào IPagedList
            var pagedFlashcards = flashcards.ToPagedList(pageNumber, pageSize);

            if (pagedFlashcards.Count == 0)
            {
                ViewBag.NoFlashcardsFound = true;
            }

            return View(pagedFlashcards); // Trả về danh sách flashcard dưới dạng IPagedList
        }

        public IActionResult Yourlibrary(string searchString, List<int?> selectedSubjects, int? page, bool listAll = false)
        {
            // Lấy danh sách các chủ đề để hiển thị trong view
            ViewBag.Subjects = _context.Subjects.ToList();
            var userId = HttpContext.Session.GetString("accId");
            // Chuyển đổi userId từ string sang int? (nullable int)
            int? userIdInt = null;
            if (!string.IsNullOrEmpty(userId) && int.TryParse(userId, out int parsedUserId))
            {
                userIdInt = parsedUserId;
            }
            // Lấy tất cả flashcard và kết nối với các chủ đề
            var flashcards = _context.Flashcards
                .Include(f => f.Subject)
                .Where(f => f.UserId == userIdInt)
                .ToList();

            // Lọc theo tên flashcard (nếu có)
            if (!string.IsNullOrEmpty(searchString))
            {
                searchString = searchString.ToLower();
                flashcards = flashcards.Where(s => s.FlashcardName.ToLower().Contains(searchString)).ToList();
            }

            // Lọc theo các chủ đề đã chọn (nếu có và nếu không chọn "List All")
            if (!listAll && selectedSubjects != null && selectedSubjects.Any())
            {
                flashcards = flashcards.Where(s => selectedSubjects.Contains(s.SubjectId.GetValueOrDefault())).ToList();
            }

            // Phân trang
            int pageSize = 12; // Số lượng flashcard trên mỗi trang
            int pageNumber = (page ?? 1); // Số trang hiện tại (mặc định là trang 1)

            // Đưa danh sách flashcard vào IPagedList
            var pagedFlashcards = flashcards.ToPagedList(pageNumber, pageSize);

            if (pagedFlashcards.Count == 0)
            {
                ViewBag.NoFlashcardsFound = true;
            }

            return View(pagedFlashcards); // Trả về danh sách flashcard dưới dạng IPagedList
        }


        //[HttpPost]
        //[RequestSizeLimit(50 * 1024 * 1024)]
        //public IActionResult UploadExcel(IFormFile excelFile)
        //{
        //    if (excelFile == null || excelFile.Length == 0)
        //    {
        //        return BadRequest("Vui lòng tải lên một tệp Excel hợp lệ.");
        //    }

        //    // Thiết lập LicenseContext trước khi sử dụng EPPlus
        //    ExcelPackage.LicenseContext = LicenseContext.NonCommercial; // Hoặc LicenseContext.Commercial

        //    List<Knowledge> knowledgeList = new List<Knowledge>();

        //    using (var stream = new MemoryStream())
        //    {
        //        excelFile.CopyTo(stream);
        //        using (var package = new ExcelPackage(stream))
        //        {
        //            ExcelWorksheet worksheet = package.Workbook.Worksheets[0];
        //            int rowCount = worksheet.Dimension.Rows;

        //            for (int row = 2; row <= rowCount; row++)
        //            {
        //                var term = worksheet.Cells[row, 1].Text;        // Cột 1 là thuật ngữ (term)
        //                var definition = worksheet.Cells[row, 2].Text;   // Cột 2 là định nghĩa (definition)

        //                if (!string.IsNullOrWhiteSpace(term) && !string.IsNullOrWhiteSpace(definition))
        //                {
        //                    knowledgeList.Add(new Knowledge
        //                    {
        //                        Knowledge1 = term,
        //                        Answer = definition
        //                    });
        //                }
        //            }
        //        }
        //    }

        //    // Serialize danh sách knowledgeList thành JSON
        //    string knowledgeListJson = JsonConvert.SerializeObject(knowledgeList);

        //    // Lưu danh sách knowledgeList vào TempData
        //    TempData["ExcelKnowledgeList"] = knowledgeListJson;

        //    // Chuyển hướng đến action Create
        //    return RedirectToAction("Create");
        //}
        [HttpPost]
        [RequestSizeLimit(50 * 1024 * 1024)] // Đặt giới hạn kích thước request là 50MB
        public IActionResult UploadExcel(IFormFile excelFile)
        {
            try
            {
                if (excelFile == null || excelFile.Length == 0)
                {
                    return BadRequest("Vui lòng tải lên một tệp Excel hợp lệ.");
                }

                // Thiết lập LicenseContext trước khi sử dụng EPPlus
                ExcelPackage.LicenseContext = LicenseContext.NonCommercial; // Hoặc LicenseContext.Commercial

                List<Knowledge> knowledgeList = new List<Knowledge>();

                using (var stream = new MemoryStream())
                {
                    excelFile.CopyTo(stream);
                    using (var package = new ExcelPackage(stream))
                    {
                        ExcelWorksheet worksheet = package.Workbook.Worksheets[0];
                        int rowCount = worksheet.Dimension.Rows;

                        for (int row = 2; row <= rowCount; row++)
                        {
                            var term = worksheet.Cells[row, 1].Text;        // Cột 1 là thuật ngữ (term)
                            var definition = worksheet.Cells[row, 2].Text;   // Cột 2 là định nghĩa (definition)

                            if (!string.IsNullOrWhiteSpace(term) && !string.IsNullOrWhiteSpace(definition))
                            {
                                knowledgeList.Add(new Knowledge
                                {
                                    Knowledge1 = term,
                                    Answer = definition
                                });
                            }
                        }
                    }
                }
                // Serialize danh sách knowledgeList thành JSON
                string knowledgeListJson = JsonConvert.SerializeObject(knowledgeList);

                // Lưu danh sách knowledgeList vào TempData
                TempData["ExcelKnowledgeList"] = knowledgeListJson;
            }
            catch (Exception ex)
            {

            }

            //// Chuyển hướng đến action Create
            return RedirectToAction("Create");

        }

        public IActionResult Create()
    {
        // Lấy danh sách môn học để hiển thị trong dropdown
        var subjects = _context.Subjects.ToList();
        ViewData["Subjects"] = new SelectList(subjects, "SubjectId", "SubjectName");

        // Lấy danh sách Knowledge từ TempData (nếu có)
        if (TempData["ExcelKnowledgeList"] != null)
        {
            var knowledgeListJson = TempData["ExcelKnowledgeList"].ToString();
            var knowledgeList = JsonConvert.DeserializeObject<List<Knowledge>>(knowledgeListJson);
            ViewBag.KnowledgeList = knowledgeList;
        }
        else
        {
            ViewBag.KnowledgeList = new List<Knowledge>();
        }

        return View();
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    public IActionResult Create(List<Knowledge> knowledgeList, Flashcard flashcard, int SubjectId)
    {
        try
        {
            var userId = Convert.ToInt32(HttpContext.Session.GetString("accId"));
            if (flashcard != null)
            {
                if (userId != null)
                {
                    flashcard.UserId = userId;
                    // Lấy ID của môn học từ combo box và gán vào Flashcard
                    if (SubjectId != null)
                    {
                        flashcard.SubjectId = SubjectId;
                    }

                    // Kiểm tra xem flashcard đã tồn tại chưa
                    var existingFlashcard = _context.Flashcards.FirstOrDefault(f => f.FlashcardName.ToLower() == flashcard.FlashcardName.ToLower());
                    if (existingFlashcard == null)
                    {
                        // Nếu flashcard chưa tồn tại, thêm mới vào cơ sở dữ liệu
                        _context.Add(flashcard);
                        _context.SaveChanges();
                    }
                    else
                    {
                        // Nếu flashcard đã tồn tại, sử dụng ID của nó
                        flashcard.FlashcardId = existingFlashcard.FlashcardId;
                    }
                }

                // Lưu danh sách kiến thức vào cơ sở dữ liệu
                foreach (var knowledge in knowledgeList)
                {
                    // Gán ID của flashcard cho mỗi knowledge
                    knowledge.FlashcardId = flashcard.FlashcardId;
                    _context.Add(knowledge);
                }
                _context.SaveChanges();
            }
            return RedirectToAction(nameof(Index));

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            ModelState.AddModelError("", "Error saving knowledge. Please try again.");
            return View("ListSubject", ListSubject);
        }

    }


    [HttpGet]
    public IActionResult Edit(int flashcardId)
    {
        // Tìm kiến thức có subjectId tương ứng
        var knowledgeList = _context.Knowledges.Include(k => k.Flashcard).Include(k => k.Flashcard.Subject).Where(k => k.FlashcardId == flashcardId).ToList();

        if (knowledgeList == null || knowledgeList.Count == 0)
        {
            return NotFound();
        }
        var subject = _context.Subjects.ToList();
        ViewData["Subjects"] = new SelectList(subject, "SubjectId", "SubjectName");

        return View(knowledgeList);

    }


    [HttpPost]
    public IActionResult Edit(int flashcardId, List<Knowledge> knowledgeList, List<Knowledge> newKnowledges, int subjectId, string flashcardName, string description, string deletedKnowledgeIds)
    {
        try
        {
            var flashcard = _context.Flashcards.Find(flashcardId);
            if (flashcard == null)
            {
                return NotFound();
            }

            flashcard.FlashcardName = flashcardName;
            flashcard.SubjectId = subjectId != 0 ? subjectId : null;
            flashcard.Description = description;
            _context.Update(flashcard);

            // Process existing Knowledges
            foreach (var knowledge in knowledgeList)
            {
                var existingKnowledge = _context.Knowledges.Find(knowledge.KnowledgeId);
                if (existingKnowledge != null)
                {
                    existingKnowledge.Knowledge1 = knowledge.Knowledge1;
                    existingKnowledge.Answer = knowledge.Answer;
                    _context.Update(existingKnowledge);
                }
                else
                {
                    ModelState.AddModelError("", $"Knowledge with ID {knowledge.KnowledgeId} does not exist.");
                    return View(knowledgeList);
                }
            }

            // Handle deleted Knowledges
            if (!string.IsNullOrEmpty(deletedKnowledgeIds))
            {
                var idsToDelete = deletedKnowledgeIds.Split(',').Select(int.Parse).ToList();
                foreach (var id in idsToDelete)
                {
                    var knowledgeToDelete = _context.Knowledges.Find(id);
                    if (knowledgeToDelete != null)
                    {
                        _context.Knowledges.Remove(knowledgeToDelete);
                    }
                }
            }

            // Add new Knowledges
            if (newKnowledges != null && newKnowledges.Any())
            {
                foreach (var newKnowledge in newKnowledges)
                {
                    if (!string.IsNullOrEmpty(newKnowledge.Knowledge1) && !string.IsNullOrEmpty(newKnowledge.Answer))
                    {
                        newKnowledge.FlashcardId = flashcardId;
                        _context.Knowledges.Add(newKnowledge);
                    }
                }
            }

            _context.SaveChanges(); // Save changes to the database
            return RedirectToAction(nameof(GetKnowledge), new { flashcardId = flashcardId });
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            ModelState.AddModelError("", "Error updating knowledge. Please try again.");
            return View(knowledgeList);
        }

        ModelState.AddModelError("", "Invalid model state.");
        return View(knowledgeList);
    }

    private bool KnowledgeExists(int id)
    {
        return _context.Knowledges.Any(k => k.KnowledgeId == id);
    }
    [HttpGet]
    public IActionResult GetSubjectInfo(int subjectId)
    {
        var subject = _context.Flashcards.FirstOrDefault(s => s.FlashcardId == subjectId);
        return PartialView("_SubjectInfoPartial", subject);
    }
    public IActionResult GetKnowledge(int flashcardId)
    {
        var knowledgeList = _context.Knowledges.Include(k => k.Flashcard).Include(k => k.Flashcard.User).Where(k => k.FlashcardId == flashcardId).ToList();
        var userId = Convert.ToInt32(HttpContext.Session.GetString("accId"));
        var subject = _context.Knowledges.Include(k => k.Flashcard).ToList();
        var user = _context.Accounts.FirstOrDefault(u => u.AccountId == userId);
        ViewData["SubjectId"] = flashcardId;
        ViewBag.Count = knowledgeList.Count();

        return View("KnowledgeList", knowledgeList);

    }

    public IActionResult Flashcard(int subjectId)
    {
        var knowledgeList = _context.Knowledges.Include(k => k.Flashcard).Where(k => k.FlashcardId == subjectId).ToList();
        var subject = _context.Knowledges.Include(k => k.Flashcard).ToList();

        ViewData["SubjectId"] = subjectId;
        return View("Flashcard", knowledgeList);

    }
    [HttpPost]
    [ValidateAntiForgeryToken]
    public IActionResult DeleteFlashcard(int flashcardId)
    {
        try
        {
            var flashcard = _context.Flashcards.Find(flashcardId);
            if (flashcard == null)
            {
                return Json(new { success = false, message = "Flashcard not found." });
            }

            var knowledgeList = _context.Knowledges.Where(k => k.FlashcardId == flashcardId);
            _context.Knowledges.RemoveRange(knowledgeList);
            _context.Flashcards.Remove(flashcard);
            _context.SaveChanges();

            return Json(new { success = true, redirectUrl = Url.Action("ListSubject", "Knowledge") });
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            return Json(new { success = false, message = "An error occurred while deleting the flashcard." });
        }
    }


    public IActionResult TakeQuiz(int flashcardId)
    {
        // Lấy danh sách các câu hỏi thuộc một chủ đề cụ thể (dựa trên flashcardId)
        var knowledges = _context.Knowledges.Include(k => k.Flashcard)
                                    .Where(k => k.FlashcardId == flashcardId)
                                    .ToList();

        // Kiểm tra xem có câu hỏi nào không
        if (knowledges.Count == 0)
        {
            return NotFound(); // hoặc xử lý trường hợp không có câu hỏi
        }

        // Lấy câu hỏi đầu tiên từ danh sách
        var firstKnowledge = knowledges.First();

        // Chuyển hướng người dùng đến trang "Learn" với câu hỏi đầu tiên và KnowledgeId của nó
        return RedirectToAction("Learn", new { knowledgeId = firstKnowledge.KnowledgeId });
    }


    [HttpPost]
    public IActionResult CheckAnswer(int knowledgeId, string userAnswer)
    {
        var knowledge = _context.Knowledges
                                .Include(k => k.Flashcard)
                                .FirstOrDefault(k => k.KnowledgeId == knowledgeId);

        if (knowledge == null)
        {
            return NotFound(); // Handle when question is not found
        }

        // Check user's answer
        if (!string.IsNullOrWhiteSpace(knowledge.Answer) && userAnswer.ToLower() == knowledge.Answer.ToLower())
        {
            var nextKnowledge = _context.Knowledges
                .Include(k => k.Flashcard)
                .Where(k => k.FlashcardId == knowledge.FlashcardId && k.KnowledgeId > knowledge.KnowledgeId)
                .OrderBy(k => k.KnowledgeId)
                .FirstOrDefault();

            if (nextKnowledge != null)
            {
                return RedirectToAction("Learn", new { knowledgeId = nextKnowledge.KnowledgeId });
            }
            else
            {
                ViewBag.Message = "You have completed learning for this flashcard.";
                return View("Learn", knowledge);
            }
        }
        else
        {
            ViewBag.UserAnswer = userAnswer;
            ViewBag.CorrectAnswer = knowledge.Answer;
            ViewBag.ErrorMessage = "Incorrect answer. Please enter correctly.";
            return View("Learn", knowledge);
        }
    }
    public IActionResult Learn(int knowledgeId)
    {
        // Lấy thông tin về câu hỏi từ cơ sở dữ liệu dựa trên knowledgeId
        var knowledge = _context.Knowledges
                                .Include(k => k.Flashcard)
                                .FirstOrDefault(k => k.KnowledgeId == knowledgeId);

        // Kiểm tra xem có câu hỏi không
        if (knowledge == null)
        {
            return NotFound(); // hoặc xử lý trường hợp không có câu hỏi
        }

        return View(knowledge); // Trả về view "Learn" với thông tin về câu hỏi
    }



    public IActionResult FlashcardExam(int flashcardId)
    {
        var knowledgeList = _context.Knowledges
            .Include(k => k.Flashcard)
            .Where(k => k.FlashcardId == flashcardId)
            .ToList();

        if (knowledgeList == null || !knowledgeList.Any())
        {
            return NotFound(); // Xử lý khi không tìm thấy câu hỏi
        }

        return View(knowledgeList);
    }

    [HttpPost]
    public IActionResult CheckAnswersFlashcard(List<int> knowledgeId, List<string> userAnswer, int flashcardId)
    {
        if (knowledgeId == null || userAnswer == null || knowledgeId.Count != userAnswer.Count)
        {
            return BadRequest("Invalid answers submitted.");
        }

        var correctCount = 0;
        var results = new List<Tuple<Knowledge, string, bool>>();

        for (int i = 0; i < knowledgeId.Count; i++)
        {
            var knowledge = _context.Knowledges.Find(knowledgeId[i]);

            if (knowledge != null)
            {
                var isCorrect = string.Equals(userAnswer[i], knowledge.Answer, StringComparison.OrdinalIgnoreCase);
                results.Add(new Tuple<Knowledge, string, bool>(knowledge, userAnswer[i], isCorrect));

                if (isCorrect)
                {
                    correctCount++;
                }
            }
        }

        ViewBag.CorrectCount = correctCount;
        ViewBag.TotalQuestions = knowledgeId.Count;
        ViewBag.Results = results;
        ViewBag.FlashcardId = flashcardId; // Add flashcardId to ViewBag
        return View("ExamResults");
    }


}

}

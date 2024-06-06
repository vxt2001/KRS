using Xunit;
using Moq;
using Microsoft.AspNetCore.Mvc;
using KRS_G54.Controllers;
using KRS_G54.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using X.PagedList;

public class KnowledgeControllerTests
{
    [Fact]
    public void ListSubject_Returns_ViewResult_With_PagedList()
    {
        // Arrange
        var mockContext = new Mock<abcContext>();
        var controller = new KnowledgeController(mockContext.Object);

        // Populate mock data
        var subjects = new List<Subject>
        {
            new Subject { SubjectId = 1, SubjectName = "Math" },
            new Subject { SubjectId = 2, SubjectName = "Science" }
        }.AsQueryable();

        var flashcards = new List<Flashcard>
        {
            new Flashcard { FlashcardId = 1, FlashcardName = "Flashcard1", SubjectId = 1, Subject = subjects.First() },
            new Flashcard { FlashcardId = 2, FlashcardName = "Flashcard2", SubjectId = 2, Subject = subjects.Last() }
        }.AsQueryable();

        var mockSetSubjects = new Mock<DbSet<Subject>>();
        mockSetSubjects.As<IQueryable<Subject>>().Setup(m => m.Provider).Returns(subjects.Provider);
        mockSetSubjects.As<IQueryable<Subject>>().Setup(m => m.Expression).Returns(subjects.Expression);
        mockSetSubjects.As<IQueryable<Subject>>().Setup(m => m.ElementType).Returns(subjects.ElementType);
        mockSetSubjects.As<IQueryable<Subject>>().Setup(m => m.GetEnumerator()).Returns(subjects.GetEnumerator());

        var mockSetFlashcards = new Mock<DbSet<Flashcard>>();
        mockSetFlashcards.As<IQueryable<Flashcard>>().Setup(m => m.Provider).Returns(flashcards.Provider);
        mockSetFlashcards.As<IQueryable<Flashcard>>().Setup(m => m.Expression).Returns(flashcards.Expression);
        mockSetFlashcards.As<IQueryable<Flashcard>>().Setup(m => m.ElementType).Returns(flashcards.ElementType);
        mockSetFlashcards.As<IQueryable<Flashcard>>().Setup(m => m.GetEnumerator()).Returns(flashcards.GetEnumerator());

        mockContext.Setup(c => c.Subjects).Returns(mockSetSubjects.Object);
        mockContext.Setup(c => c.Flashcards).Returns(mockSetFlashcards.Object);

        // Act
        var result = controller.ListSubject(null, null, null, false) as ViewResult;

        // Assert
        Assert.NotNull(result);
        var model = result.Model as IPagedList<Flashcard>;
        Assert.NotNull(model);
        Assert.Equal(2, model.Count);
    }
}

namespace KRS_G54.Models
{
    public class FlashcardExamViewModel
    {
        public int KnowledgeId { get; set; }
        public string Question { get; set; }
        public List<string> Answers { get; set; }
    }
}

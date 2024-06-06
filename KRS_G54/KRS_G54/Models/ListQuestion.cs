namespace KRS_G54.Models
{
    public class ListQuestion
    {
        public int ExamId { get; set; }

        public int KnowledgeId { get; set; }

        public List<Questions> Question { get; set; }
    }

    public class Questions
    {
        public string Name { get; set; }

        public Boolean Checked { get; set; }
    }
}

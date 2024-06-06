using System.Collections.Generic;

namespace KRS_G54.Models
{
    public class ExamReportViewModel
    {
        public Class Class { get; set; }
        public List<StudentExamSummary> FilteredResults { get; set; }
    }
    public class StudentExamSummary
    {
        public int AccountId { get; set; }
        public string Email { get; set; }
        public string FullName { get; set; }
        public string ExamName { get; set; }
        public double HighestScore { get; set; }
        public int AttemptCount { get; set; }
    }

}


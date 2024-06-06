using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace KRS_G54.Models
{
    public partial class abcContext : DbContext
    {
        public abcContext()
        {
        }

        public abcContext(DbContextOptions<abcContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Account> Accounts { get; set; } = null!;
        public virtual DbSet<AnswerOption> AnswerOptions { get; set; } = null!;
        public virtual DbSet<Class> Classes { get; set; } = null!;
        public virtual DbSet<ClassUser> ClassUsers { get; set; } = null!;
        public virtual DbSet<Exam> Exams { get; set; } = null!;
        public virtual DbSet<ExamKnowledge> ExamKnowledges { get; set; } = null!;
        public virtual DbSet<ExamResult> ExamResults { get; set; } = null!;
        public virtual DbSet<ExamResultReview> ExamResultReviews { get; set; } = null!;
        public virtual DbSet<Flashcard> Flashcards { get; set; } = null!;
        public virtual DbSet<Knowledge> Knowledges { get; set; } = null!;
        public virtual DbSet<Lesson> Lessons { get; set; } = null!;
        public virtual DbSet<Question> Questions { get; set; } = null!;
        public virtual DbSet<Role> Roles { get; set; } = null!;
        public virtual DbSet<Semester> Semesters { get; set; } = null!;
        public virtual DbSet<Subject> Subjects { get; set; } = null!;
        public virtual DbSet<UserExam> UserExams { get; set; } = null!;
        public virtual DbSet<UserQuestion> UserQuestions { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("server=14.225.205.28,1436;uid=sa;password=Abc@123123;database=abc;Trusted_Connection=False;MultipleActiveResultSets=true;TrustServerCertificate=true");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Account>(entity =>
            {
                entity.ToTable("Account");

                entity.Property(e => e.CreateDate).HasColumnType("datetime");

                entity.Property(e => e.Email)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.FullName).HasMaxLength(255);

                entity.Property(e => e.Password)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.PhoneNumber)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.ProfilePicture)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.UserName)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.Accounts)
                    .HasForeignKey(d => d.RoleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Account_Role");
            });

            modelBuilder.Entity<AnswerOption>(entity =>
            {
                entity.ToTable("AnswerOption");

                entity.Property(e => e.AnswerOption1).HasColumnName("AnswerOption");

                entity.Property(e => e.IsKey).HasColumnName("isKey");

                entity.HasOne(d => d.ExamKnowledge)
                    .WithMany(p => p.AnswerOptions)
                    .HasForeignKey(d => d.ExamKnowledgeId)
                    .HasConstraintName("FK__AnswerOpt__Knowl__6C190EBB");
            });

            modelBuilder.Entity<Class>(entity =>
            {
                entity.ToTable("Class");

                entity.Property(e => e.ClassName)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.CreateDate).HasColumnType("datetime");

                entity.HasOne(d => d.Semester)
                    .WithMany(p => p.Classes)
                    .HasForeignKey(d => d.SemesterId)
                    .HasConstraintName("FK_Class_Semester");

                entity.HasOne(d => d.Subject)
                    .WithMany(p => p.Classes)
                    .HasForeignKey(d => d.SubjectId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Class_Subject");
            });

            modelBuilder.Entity<ClassUser>(entity =>
            {
                entity.HasKey(e => new { e.ClassId, e.AccountId });

                entity.ToTable("ClassUser");

                entity.HasOne(d => d.Account)
                    .WithMany(p => p.ClassUsers)
                    .HasForeignKey(d => d.AccountId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ClassUser_Account");

                entity.HasOne(d => d.Class)
                    .WithMany(p => p.ClassUsers)
                    .HasForeignKey(d => d.ClassId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_ClassUser_Class");
            });

            modelBuilder.Entity<Exam>(entity =>
            {
                entity.ToTable("Exam");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.EndDate).HasColumnType("datetime");

                entity.Property(e => e.ExamName)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.Property(e => e.IsPractice).HasColumnName("isPractice");

                entity.HasOne(d => d.Class)
                    .WithMany(p => p.Exams)
                    .HasForeignKey(d => d.ClassId)
                    .HasConstraintName("FK__Exam__ClassId__73BA3083");

                entity.HasOne(d => d.Subject)
                    .WithMany(p => p.Exams)
                    .HasForeignKey(d => d.SubjectId)
                    .HasConstraintName("FK__Exam__SubjectId__0A9D95DB");
            });

            modelBuilder.Entity<ExamKnowledge>(entity =>
            {
                entity.ToTable("ExamKnowledge");

                entity.HasOne(d => d.Lesson)
                    .WithMany(p => p.ExamKnowledges)
                    .HasForeignKey(d => d.LessonId)
                    .HasConstraintName("FK__ExamKnowl__Lesso__45BE5BA9");

                entity.HasOne(d => d.Subject)
                    .WithMany(p => p.ExamKnowledges)
                    .HasForeignKey(d => d.SubjectId)
                    .HasConstraintName("FK__ExamKnowl__Subje__498EEC8D");
            });

            modelBuilder.Entity<ExamResult>(entity =>
            {
                entity.ToTable("ExamResult");

                entity.Property(e => e.CompletionTime).HasColumnName("CompletionTime ");

                entity.HasOne(d => d.Account)
                    .WithMany(p => p.ExamResults)
                    .HasForeignKey(d => d.AccountId)
                    .HasConstraintName("FK__ExamResul__Accou__339FAB6E");

                entity.HasOne(d => d.Exam)
                    .WithMany(p => p.ExamResults)
                    .HasForeignKey(d => d.ExamId)
                    .HasConstraintName("FK__ExamResul__ExamI__3493CFA7");

                entity.HasOne(d => d.UserExam)
                    .WithMany(p => p.ExamResults)
                    .HasForeignKey(d => d.UserExamId)
                    .HasConstraintName("FK__ExamResul__UserE__3587F3E0");
            });

            modelBuilder.Entity<ExamResultReview>(entity =>
            {
                entity.ToTable("ExamResultReview");

                entity.HasOne(d => d.Exam)
                    .WithMany(p => p.ExamResultReviews)
                    .HasForeignKey(d => d.ExamId)
                    .HasConstraintName("FK_ExamResult_Exam");

                entity.HasOne(d => d.ExamResult)
                    .WithMany(p => p.ExamResultReviews)
                    .HasForeignKey(d => d.ExamResultId)
                    .HasConstraintName("FK__ExamResul__ExamR__40F9A68C");

                entity.HasOne(d => d.Ue)
                    .WithMany(p => p.ExamResultReviews)
                    .HasForeignKey(d => d.UeId)
                    .HasConstraintName("FK_ExamResult_UserExam");
            });

            modelBuilder.Entity<Flashcard>(entity =>
            {
                entity.ToTable("Flashcard");

                entity.HasOne(d => d.Subject)
                    .WithMany(p => p.Flashcards)
                    .HasForeignKey(d => d.SubjectId)
                    .HasConstraintName("FK_Subject");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Flashcards)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK_User");
            });

            modelBuilder.Entity<Knowledge>(entity =>
            {
                entity.ToTable("Knowledge");

                entity.Property(e => e.Knowledge1).HasColumnName("Knowledge");

                entity.HasOne(d => d.Flashcard)
                    .WithMany(p => p.Knowledges)
                    .HasForeignKey(d => d.FlashcardId)
                    .HasConstraintName("FK_Flashcard");

                entity.HasOne(d => d.Lesson)
                    .WithMany(p => p.Knowledges)
                    .HasForeignKey(d => d.LessonId)
                    .HasConstraintName("FK_Lesson");

                entity.HasOne(d => d.Subject)
                    .WithMany(p => p.Knowledges)
                    .HasForeignKey(d => d.SubjectId)
                    .HasConstraintName("FK__Knowledge__Subje__5629CD9C");
            });

            modelBuilder.Entity<Lesson>(entity =>
            {
                entity.ToTable("Lesson");

                entity.Property(e => e.SubjectId).HasColumnName("Subject_id");

                entity.HasOne(d => d.Subject)
                    .WithMany(p => p.Lessons)
                    .HasForeignKey(d => d.SubjectId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("Subject_id");
            });

            modelBuilder.Entity<Question>(entity =>
            {
                entity.ToTable("Question");

                entity.HasOne(d => d.Exam)
                    .WithMany(p => p.Questions)
                    .HasForeignKey(d => d.ExamId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Question__ExamId__14270015");

                entity.HasOne(d => d.ExamKnowledge)
                    .WithMany(p => p.Questions)
                    .HasForeignKey(d => d.ExamKnowledgeId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Question__Knowle__151B244E");
            });

            modelBuilder.Entity<Role>(entity =>
            {
                entity.ToTable("Role");

                entity.Property(e => e.RoleName)
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Semester>(entity =>
            {
                entity.ToTable("Semester");

                entity.Property(e => e.SemesterName)
                    .HasMaxLength(255)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Subject>(entity =>
            {
                entity.ToTable("Subject");

                entity.Property(e => e.Description)
                    .HasMaxLength(1000)
                    .IsUnicode(false);

                entity.Property(e => e.SubjectCode)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.Account)
                    .WithMany(p => p.Subjects)
                    .HasForeignKey(d => d.AccountId)
                    .HasConstraintName("FK_Subject_Account1");
            });

            modelBuilder.Entity<UserExam>(entity =>
            {
                entity.HasKey(e => e.Ueid)
                    .HasName("PK__UserExam__B6E17FF000018AB5");

                entity.ToTable("UserExam");

                entity.Property(e => e.Ueid).HasColumnName("UEId");

                entity.Property(e => e.ExamName)
                    .HasMaxLength(255)
                    .IsUnicode(false);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.UserExams)
                    .HasForeignKey(d => d.UserId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__UserExam__UserId__60A75C0F");
            });

            modelBuilder.Entity<UserQuestion>(entity =>
            {
                entity.HasKey(e => e.Uqid)
                    .HasName("PK__UserQues__B7E3A27643C31889");

                entity.ToTable("UserQuestion");

                entity.Property(e => e.Uqid).HasColumnName("UQid");

                entity.Property(e => e.Ueid).HasColumnName("UEId");

                entity.HasOne(d => d.ExamKnowledge)
                    .WithMany(p => p.UserQuestions)
                    .HasForeignKey(d => d.ExamKnowledgeId)
                    .HasConstraintName("FK__UserQuest__Knowl__06CD04F7");

                entity.HasOne(d => d.Ue)
                    .WithMany(p => p.UserQuestions)
                    .HasForeignKey(d => d.Ueid)
                    .HasConstraintName("FK__UserQuesti__UEId__2EDAF651");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.UserQuestions)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK__UserQuest__UserI__6383C8BA");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}

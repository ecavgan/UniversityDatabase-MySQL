/*
ALTER TABLE informatics.college DROP FOREIGN KEY FK_Dean_CollegeInstructor;
ALTER TABLE informatics.dept DROP FOREIGN KEY FK_Admins_DeptCollege;
ALTER TABLE informatics.dept DROP FOREIGN KEY FK_Chair_DeptInstructor;
ALTER TABLE informatics.instructor DROP FOREIGN KEY FK_Employs_InstructorDept;
ALTER TABLE informatics.section DROP FOREIGN KEY FK_Teaches_SectionInstructor;
ALTER TABLE informatics.student DROP FOREIGN KEY FK_Has_StudentDept;
ALTER TABLE informatics.course DROP FOREIGN KEY FK_Offers_CourseDept;
ALTER TABLE informatics.student_takes DROP FOREIGN KEY FK_Takes_StudentTakes_Section;
ALTER TABLE informatics.student_takes DROP FOREIGN KEY FK_Takes_StudentTakes_Student;
ALTER TABLE informatics.section DROP FOREIGN KEY FK_Secs_SectionCourse;*/

/* DEAN */
ALTER TABLE informatics.college
ADD CONSTRAINT FK_Dean_CollegeInstructor
FOREIGN KEY (DeanId) REFERENCES informatics.instructor(Id);

/* ADMINS */
ALTER TABLE informatics.dept
ADD CONSTRAINT FK_Admins_DeptCollege
FOREIGN KEY (CName) REFERENCES informatics.college(CName);

/* CHAIR */
ALTER TABLE informatics.dept
ADD CONSTRAINT FK_Chair_DeptInstructor
FOREIGN KEY (ChairmanId) REFERENCES informatics.instructor(Id);

/* EMPLOYS */
ALTER TABLE informatics.instructor
ADD CONSTRAINT FK_Employs_InstructorDept
FOREIGN KEY (DCode) REFERENCES informatics.dept(DCode);

/* TEACHES */
ALTER TABLE informatics.section
ADD CONSTRAINT FK_Teaches_SectionInstructor
FOREIGN KEY (InsId) REFERENCES informatics.instructor(Id);

/* HAS */
ALTER TABLE informatics.student
ADD CONSTRAINT FK_Has_StudentDept
FOREIGN KEY (DCode) REFERENCES informatics.dept(DCode);

/* OFFERS */
ALTER TABLE informatics.course
ADD CONSTRAINT FK_Offers_CourseDept
FOREIGN KEY (DCode) REFERENCES informatics.dept(DCode);

/* TAKES */
ALTER TABLE informatics.student_takes
ADD CONSTRAINT FK_Takes_StudentTakes_Section
FOREIGN KEY (SecId) REFERENCES informatics.section(SecId);

ALTER TABLE informatics.student_takes
ADD CONSTRAINT FK_Takes_StudentTakes_Student
FOREIGN KEY (SId) REFERENCES informatics.student(SId);

/* SECS */
ALTER TABLE informatics.section
ADD CONSTRAINT FK_Secs_SectionCourse
FOREIGN KEY (CCode) REFERENCES informatics.course(CCode);

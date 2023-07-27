/*
ALTER TABLE informatics.instructor
DROP CHECK CHK_rank;

ALTER TABLE informatics.student_takes
DROP CHECK CHK_grade;

ALTER TABLE informatics.section
DROP CHECK CHK_sem;

ALTER TABLE informatics.course
DROP CHECK CHK_course_credits;
*/

# Öğretim Üyesinin Unvanının Kontrolü
ALTER TABLE informatics.instructor
ADD CONSTRAINT CHK_rank CHECK (Rank_ IN ('Full', 'Associate', 'Assistant'));

# Ders Notu Kontrolü
ALTER TABLE informatics.student_takes
ADD CONSTRAINT CHK_grade CHECK (Grade IN ('AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FD', 'FF'));

# Sömestr Adları Kontrolü
ALTER TABLE informatics.section
ADD CONSTRAINT CHK_sem CHECK (Sem IN ('Spring', 'Fall', 'Summer'));

# Ders Kredisi Kontrolü
ALTER TABLE informatics.course
ADD CONSTRAINT CHK_course_credits CHECK (Credits <= 10 AND Credits > 0);

# Ders Seviye İsimleri Kontrolü
ALTER TABLE informatics.course
ADD CONSTRAINT CHK_course_level CHECK (Level_ IN ('Undergraduate', 'Graduate'));

# Sectionun Gün Kontrolü
ALTER TABLE informatics.section
ADD CONSTRAINT CHK_section_daystime CHECK (DaysTime <= 7);
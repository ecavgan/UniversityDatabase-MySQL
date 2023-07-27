# 1) Doğum tarihi bilgisine (DOB) göre öğrencilerin yaşlarını getirme / 1 TABLO
SELECT SId, FName, MName, LName, DOB, YEAR(CURDATE()) - YEAR(DOB) - (RIGHT(CURDATE(), 5) < RIGHT(DOB, 5)) AS Age
FROM student;

# 2) Adresi istanbul'da gözüken öğrencilerin listelenmesi / 1 TABLO
SELECT SId, FName, MName, LName, Addr
FROM student AS std
WHERE std.Addr LIKE '%Istanbul%'
ORDER BY SId;

# 3) Her bir bölümdeki toplam akademik personel sayısının çoktan aza şekilde sıralanması / 2 TABLO
SELECT dpt.DCode, dpt.DName, COUNT(ins.Id) AS NumberOfInstructors
FROM dept AS dpt
JOIN instructor AS ins ON dpt.DCode = ins.DCode
GROUP BY dpt.DCode
ORDER BY NumberOfInstructors DESC;

# 4) Mühendislik fakültesindeki toplam profesör, doçent ve dr. öğretim üyesi sayıları / 3 TABLO
SELECT ins.Rank_, COUNT(ins.Rank_) AS RankCount
FROM instructor AS ins
JOIN dept AS dpt ON ins.DCode = dpt.DCode
JOIN college AS cll ON dpt.CName = cll.CName
WHERE cll.CName = 'College of Engineering'
GROUP BY ins.Rank_
ORDER BY FIELD(ins.Rank_, 'Full', 'Associate', 'Assistant');

# 5) 1. sınıf bilgisayar mühendisliği derslerinin listesi / 3 TABLO
SELECT crs.CoName, ins.IName
FROM section AS sec
JOIN instructor AS ins ON sec.InsId = ins.Id
JOIN course AS crs ON sec.CCode = crs.CCode
WHERE crs.DCode = 1 AND (sec.Year_ = 1 OR sec.Year_ = 2)
GROUP BY crs.CoName, ins.Id
ORDER BY crs.CoName ASC;

# 6) Ayrık yapılar dersinin not dağılımı
SELECT tks.Grade, COUNT(tks.Grade)
FROM section AS sec
JOIN course AS crs ON sec.CCode = crs.CCode
JOIN student_takes AS tks ON sec.SecId = tks.SecId
WHERE crs.CoName LIKE '%Ayrik%Yapilar%'
GROUP BY tks.Grade
ORDER BY tks.Grade ASC;

# 7) Ayrık Yapılar dersinden başarısız olan öğrencilerin yüksek nottan düşüğe sıralı gösterimi / 4 TABLO
SELECT stu.SId, stu.FName, stu.MName, stu.LName, sec.SecNo, tks.Grade
FROM student AS stu
JOIN student_takes AS tks ON stu.SId = tks.SId
JOIN section AS sec ON sec.SecId = tks.SecId
JOIN course AS crs ON sec.CCode = crs.CCode
WHERE crs.CoName LIKE '%Ayrik%Yapilar%' AND (tks.Grade LIKE 'D%' OR tks.Grade LIKE 'F%')
ORDER BY tks.Grade, stu.FName ASC;

# 8) Bir akademisyenin hangi departmanda kaç ders ve sectiona sahip olduğu bilgisi / 4 TABLO
SELECT ins.IName, dpt.DCode, dpt.DName, crs.CoName, COUNT(sec.SecId) AS SectionCount
FROM instructor AS ins
JOIN section AS sec ON ins.Id = sec.InsId
JOIN course AS crs on sec.CCode = crs.CCode
JOIN dept AS dpt ON crs.DCode = dpt.DCode
WHERE ins.IName LIKE '%Murat%Osman%Ünalır%'
GROUP BY ins.IName, dpt.DCode, crs.CCode
ORDER BY SectionCount DESC;

# 9) Biyomedikal bölümündeki yüksek lisans dersi alan öğrencilerinin ders bazında toplam sayıları / 4 TABLO
SELECT crs.CCode,crs.CoName, crs.Level_, COUNT(crs.Level_) AS StudentCount
FROM student AS std
JOIN student_takes AS tks ON std.SId = tks.SId
JOIN section AS sec ON tks.SecId = sec.SecId
JOIN course AS crs ON sec.CCode = crs.CCode
WHERE crs.DCode = 4 AND crs.Level_ = 'Graduate'# Biyomühendisliğe veri girildiğinde departman kodu değiştirilecek
GROUP BY crs.CCode
ORDER BY crs.CCode ASC;

# 10) Yazılım Mühendisliği bölümündeki her öğrencinin aldığı toplam kredi sayısını sergileme / 5 TABLO
SELECT stu.SId, stu.FName, stu.MName, stu.LName, SUM(crs.Credits) AS TotalCredits
FROM student stu
JOIN informatics.student_takes tks ON tks.SId = stu.SId
JOIN informatics.section sec ON sec.SecId = tks.SecId
JOIN informatics.course crs ON crs.CCode = sec.CCode
WHERE crs.DCode = 2 # Yazılım Mühendisliği bölümü kodu
GROUP BY stu.SId
ORDER BY TotalCredits DESC;

# 11) Bilgisayar mühendisliği bölümünün en yüksek kredili ders(ler)ininin ders kodu, ismi,
# kredisi, varsa section'a bağlı hocalarının isimleri ve sectionların sınıf mevcudu bilgilerinin getirilmesi
SELECT sec.SecId, crs.CoName, crs.Credits, ins.IName, COUNT(tks.SId) AS StudentCount
FROM course AS crs
JOIN dept AS dpt ON crs.DCode = dpt.DCode
JOIN section AS sec ON sec.CCode = crs.CCode
JOIN instructor AS ins ON sec.InsId = ins.Id
JOIN student_takes AS tks ON sec.SecId = tks.SecId
WHERE dpt.DCode = 1 AND crs.Credits = (SELECT MAX(Credits) FROM course WHERE crs.DCode = 1)
GROUP BY sec.SecId
ORDER BY StudentCount DESC;

# 12) Her departmandaki akademisyen sayısı, öğrencisi sayısı ve oranı sıralı şekilde gösterimi
SELECT DepName, DepCode, STU_COUNT, SUM(COUNTT) AS INS_COUNT, STU_COUNT/SUM(COUNTT) AS ORAN FROM
(SELECT dpt.DName AS DepName, dpt.DCode AS DepCode, COUNT(DISTINCT(dpt.DCode)) AS COUNTT, COUNT(stu.SId) AS STU_COUNT
FROM instructor AS ins
JOIN dept AS dpt ON ins.DCode = dpt.DCode
JOIN student AS stu ON dpt.DCode = stu.DCode
GROUP BY ins.Id) AS A
GROUP BY DepName, DepCode, STU_COUNT;

# 13) Bir departmandaki her dersin başarılı öğrenci sayısının yüksekliğine göre sıralanması
SELECT CoCode, CoName, StuCount, StuCount - NumberOfFailingStudents AS PassingStudents, NumberOfFailingStudents FROM (
SELECT crs.CCode AS CoCode, crs.CoName AS CoName, COUNT(tks.SId) AS StuCount,
SUM(CASE WHEN tks.Grade LIKE 'D%' OR tks.Grade LIKE 'F%' THEN 1 ELSE 0 END) AS NumberOfFailingStudents
FROM student AS stu
JOIN student_takes AS tks ON stu.SId = tks.SId
JOIN section AS sec ON tks.SecId = sec.SecId
JOIN course AS crs ON sec.CCode = crs.CCode
GROUP BY crs.CCode)
AS A GROUP BY CoCode, CoName
ORDER BY StuCount DESC;

# 14) Bir fakültedeki derslerin not ortalamasına göre sıralaması
SELECT crs.CoName AS CourseName,
       AVG(CASE
             WHEN tks.Grade = 'AA' THEN 4.0
             WHEN tks.Grade = 'BA' THEN 3.5
             WHEN tks.Grade = 'BB' THEN 3.0
             WHEN tks.Grade = 'CB' THEN 2.5
             WHEN tks.Grade = 'CC' THEN 2.0
             WHEN tks.Grade = 'DC' THEN 1.5
             WHEN tks.Grade = 'DD' THEN 1.0
             WHEN tks.Grade = 'FD' THEN 0.5
             ELSE 0.0
           END)*25 AS AverageGrade
FROM COURSE crs
JOIN SECTION sec ON crs.CCode = sec.CCode
JOIN STUDENT_TAKES tks ON sec.SecId = tks.SecId
JOIN dept dep ON crs.DCode = dep.DCode
WHERE dep.CName='College of Engineering'
GROUP BY crs.CoName
ORDER BY AverageGrade DESC;


# 15) Veritabanı Yönetimi dersini alan öğrencilerin course bazında hocaları tercih etme yüzdeleri
SELECT ins.IName AS InstructorName,
       COUNT(tks.SId) AS NumberOfStudents,
       COUNT(tks.SId) / (
           SELECT COUNT(*) FROM STUDENT_TAKES tks
           JOIN SECTION sec ON tks.SecId=sec.SecId
           JOIN COURSE crs ON sec.CCode=crs.CCode
           WHERE crs.CoName ='Veritabanı Yönetimi')*100 AS PreferenceRate
FROM INSTRUCTOR ins
JOIN SECTION sec ON ins.Id=sec.InsId
JOIN STUDENT_TAKES tks ON sec.SecId=tks.SecId
JOIN COURSE crs ON sec.CCode=crs.CCode
WHERE crs.CoName ='Veritabanı Yönetimi'
GROUP BY ins.IName
ORDER BY PreferenceRate DESC;

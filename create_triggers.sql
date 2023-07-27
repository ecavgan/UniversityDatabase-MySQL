### 1) Profesör olmayan bir akademisyenin dekan olmasına izin verilmemesi
### Ekleme
DELIMITER $$
CREATE TRIGGER insert_dean
BEFORE INSERT ON college
FOR EACH ROW
BEGIN
IF NOT EXISTS (
  SELECT *
  FROM instructor AS ins
  WHERE ins.Id = new.deanId AND ins.Rank_ = 'Full'
) THEN SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Dean must be full professor';
END IF;
END$$
DELIMITER ;

/*
# Örnek Gerçekleştirimi
SELECT *
FROM college;

INSERT INTO college (CName, COffice, CPhone, DeanId) VALUES
('College of Sciences', 'B502', '+902323880879', 2);
*/

### Güncelleme
DELIMITER $$
CREATE TRIGGER update_dean
BEFORE UPDATE ON college
FOR EACH ROW
BEGIN
IF NOT EXISTS (
  SELECT *
  FROM instructor AS ins
  WHERE ins.Id = new.deanId AND ins.Rank_ = 'Full'
) THEN SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Dean must be full professor';
END IF;
END$$
DELIMITER ;

/*
# Örnek Gerçekleştirimi
SELECT *
FROM instructor
WHERE Id = 3;

UPDATE college
SET DeanId = 3
WHERE CName = 'College of Engineering';
*/

### 2) Bir akademisyenin en fazla bir fakülteye (college'a) dekanlık yapabileceğinin kontrolleri.
# Ekleme
DELIMITER $$
CREATE TRIGGER insert_dean_c
BEFORE INSERT ON college
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT *
  FROM instructor AS ins
  JOIN college AS col ON ins.Id = col.DeanId
  WHERE ins.Id = new.DeanId
) THEN SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Instructor already deans another college';
END IF;
END$$
DELIMITER ;

/*
# Örnek Gerçekleştirimi
SELECT *
FROM college;

INSERT INTO college (CName, COffice, CPhone, DeanId) VALUES
('College of Sciencess', 'B502', '+902323880879', 26);
*/

# Güncelleme
DELIMITER $$
CREATE TRIGGER update_dean_c
BEFORE UPDATE ON college
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT *
  FROM instructor AS ins
  JOIN college AS col ON ins.Id = col.DeanId
  WHERE ins.Id = new.DeanId
) THEN SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Instructor already deans another college';
END IF;
END$$
DELIMITER ;

/*
# Örnek Gerçekleştirimi
UPDATE college
SET DeanId = 26
WHERE CName = 'College of Medicine';
*/

### 3) Bir akademisyenin yalnızca bir departmana yöneticilik yapabileceğinin kontrolleri.
### Ekleme
DELIMITER $$
CREATE TRIGGER insert_chairman
BEFORE INSERT ON dept
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT *
  FROM instructor AS ins
  JOIN dept AS dpt ON ins.Id = dpt.ChairmanId
  WHERE ins.Id = new.ChairmanId
) THEN SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Instructor already chairs another dept';
END IF;
END$$
DELIMITER ;

/*
# Örnek gerçekleştirimi
INSERT INTO informatics.dept (DName, DOffice, DPhone, ChairmanId, CStartDate, CName) VALUES
('Cloud Engineering', 'Building A', '555-4934', 1, CURDATE(), 'College of Engineering');
*/

### Güncelleme
DELIMITER $$
CREATE TRIGGER update_chairman
BEFORE UPDATE ON dept
FOR EACH ROW
BEGIN
IF EXISTS (
  SELECT *
  FROM instructor AS ins
  JOIN dept AS dpt ON ins.Id = dpt.ChairmanId
  WHERE ins.Id = new.ChairmanId
) THEN SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'Instructor already chairs another dept';
END IF;
END$$
DELIMITER ;

/*
# Örnek gerçekleştirimi
SELECT ins.Id, dpt.DName
FROM instructor AS ins
JOIN dept AS dpt ON ins.Id = dpt.ChairmanId;

UPDATE dept
SET ChairmanId = 1
WHERE DCode = 2;

UPDATE dept
SET ChairmanId = 2
WHERE DCode = 2;
*/

### 4) Bölüm başkanı değiştiğinde göreve geliş tarihinin güncellenmesi
DELIMITER //
CREATE TRIGGER update_chairman_c
BEFORE UPDATE ON dept
FOR EACH ROW
BEGIN
IF new.ChairmanId != old.ChairmanId THEN SET new.CStartDate = CURDATE();
END IF;
END; //
delimiter ;

/*
# Örnek gerçekleştirimi
UPDATE informatics.dept
SET ChairmanId = 104
WHERE DCode = 200;
*/

### 5) Bölüm başkanı eklendiğinde göreve geliş tarihi girilmemişse otomatik atanması
DELIMITER //
CREATE TRIGGER before_insert_chairman
BEFORE INSERT ON dept
FOR EACH ROW
BEGIN
IF new.CStartDate IS NULL THEN SET new.CStartDate = CURDATE();
END IF;
END //

/*
# Örnek gerçekleştirimi
UPDATE instructor
SET IName = NULL
WHERE Id = 2;

INSERT INTO dept(DName, DOffice, DPhone, ChairmanId, CStartDate, CName)
VALUES ('Data Science Engineering', NULL, NULL, 2, NULL, 'College of Engineering');
*/


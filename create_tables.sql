DROP SCHEMA IF EXISTS informatics;
CREATE SCHEMA IF NOT EXISTS informatics;

/*
SET foreign_key_checks = 0;
DROP TABLE informatics.college;
DROP TABLE informatics.course;
DROP TABLE informatics.dept;
DROP TABLE informatics.instructor;
DROP TABLE informatics.section;
DROP TABLE informatics.student;
DROP TABLE informatics.student_takes;
SET foreign_key_checks = 1;
*/

CREATE TABLE informatics.college (
CName varchar(50) NOT NULL,
COffice varchar(10),
CPhone varchar(15),
DeanId int,
PRIMARY KEY (CName)
);

CREATE TABLE informatics.instructor (
Id int auto_increment,
Rank_ varchar(50),
IName varchar(50),
IOffice varchar(10),
IPhone varchar(15),
DCode int,
PRIMARY KEY (Id)
);

CREATE TABLE informatics.dept (
DCode int auto_increment,
DName varchar(100),
DOffice varchar(11),
DPhone varchar(15),
ChairmanId int,
CStartDate date,
CName varchar(50),
PRIMARY KEY (DCode)
);

CREATE TABLE informatics.student (
SId int auto_increment,
DOB date,
FName varchar(30),
MName varchar(30),
LName varchar(30),
Addr varchar(100),
Phone varchar(15),
Major varchar(50),
DCode int,
PRIMARY KEY (SId)
);

CREATE TABLE informatics.course (
CCode int auto_increment,
Credits int,
CoName varchar(100) NOT NULL,
Level_ varchar(30) NOT NULL,
CDesc varchar(100),
DCode int,
PRIMARY KEY (CCode)
);

CREATE TABLE informatics.section (
SecId int auto_increment,
SecNo varchar(3) NOT NULL,
Sem varchar(6),
Year_ int,
Bldg varchar(100),
RoomNo varchar(10),
DaysTime int,
InsId int,
CCode int,
PRIMARY KEY (SecId)
);

CREATE TABLE informatics.student_takes (
SId int,
SecId int,
Grade varchar(2)
);

ALTER TABLE informatics.student_takes
ADD CONSTRAINT PK_Student_Takes PRIMARY KEY (SId, SecId);
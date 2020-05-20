CREATE TABLE Specialty (
SpecialtyId INT PRIMARY KEY IDENTITY (1,1),
Name varchar(50))



CREATE TABLE Subject (
SubjectId INT PRIMARY KEY IDENTITY (1,1),
Name varchar(50))


CREATE TABLE Student (
FNumber varchar(10) PRIMARY KEY,
SpecialtyId INT,
FName varchar(50),
MName varchar(50),
LName varchar(50),
Address varchar(100),
Phone varchar(50),
EMail varchar(50),
FOREIGN KEY (SpecialtyId)  REFERENCES Specialty (SpecialtyId))

CREATE TABLE StudentSubject (
FNumber varchar(10),
SubjectId INT,
FinalGrade INT,
PRIMARY KEY (FNumber, SubjectId),
FOREIGN KEY (FNumber) REFERENCES Student (FNumber),
FOREIGN KEY (SubjectId) REFERENCES Subject (SubjectId))


CREATE TABLE Login (
Id INT PRIMARY KEY,
Username varchar(50),
Password varchar(50))


INSERT INTO Login (Id, Username, Password)
VALUES (1, 'ivan', 'asd');

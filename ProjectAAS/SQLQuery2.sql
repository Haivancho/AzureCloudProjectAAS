CREATE TABLE Speciality (
SpecialityId INT PRIMARY KEY IDENTITY (1,1),
Name varchar(50))



CREATE TABLE Subject (
SubjectId INT PRIMARY KEY IDENTITY (1,1),
Name varchar(50))


CREATE TABLE Student (
FNumber varchar(10) PRIMARY KEY,
SpecialityId INT,
FName varchar(50),
MName varchar(50),
LName varchar(50),
Address varchar(100),
Phone varchar(50),
EMail varchar(50),
FOREIGN KEY (SpecialityId)  REFERENCES Speciality (SpecialityId))

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
VALUES (1, 'simeon', 123);

commit;

exec sp_rename 'dbo.Speciality', 'Specialty'


EXEC sp_rename 'dbo.Student.SpecialityId', 'SpecialtyId', 'COLUMN';

EXEC sp_rename 'dbo.Specialty.SpecialityId', 'SpecialtyId', 'COLUMN';

set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
SET IDENTITY_INSERT dbo.Subject OFF
GO

commit

ALTER procedure [dbo].[spInsertDeletedIntoTBLContent]
@SubjectId int, 
SET IDENTITY_INSERT dbo.Subject ON
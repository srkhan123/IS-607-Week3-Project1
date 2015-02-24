

-- Project 1
--
--This is a school management system. 
--A family moves into the school area and goes to school to register their students. 
--Information for both parents and students are entered into the system. 
--The students are assigned classroom and informed which classroom they have to goto.
--The classroom has a teacher which teaches a subject to the students.
-------------------------------------------------------------------------------------

DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Parents;	
DROP TABLE IF EXISTS Classrooms;
DROP TABLE IF EXISTS Teachers;
DROP TABLE IF EXISTS Student_Classroom;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Parents
(
  ID 			Serial not null primary key, 
  Parent_FirstName	VARCHAR,
  Parent_LastName 	VARCHAR,
  Address 		VARCHAR,
  City			VARCHAR,
  State			VARCHAR,
  Zip			VARCHAR,
  Tel_Home		VARCHAR
);

INSERT INTO Parents ( Parent_FirstName , Parent_LastName, Address, City, State, Zip, Tel_Home) VALUES ('John', 'Johnson', '256 Ferndale Lane', 'Downingtown', 'PA', '19335', '610-518-2589');
INSERT INTO Parents ( Parent_FirstName , Parent_LastName, Address, City, State, Zip, Tel_Home) VALUES ('Shahid', 'Khan','30 Lincoln Ave','Downingtown','PA', '19335','235-896-8745');
INSERT INTO Parents ( Parent_FirstName , Parent_LastName, Address, City, State, Zip, Tel_Home) VALUES ('Steve','Rodriguez','60 Cornor Ketch Road','Downingtown','PA','19336','698-874-8974');
INSERT INTO Parents ( Parent_FirstName , Parent_LastName, Address, City, State, Zip, Tel_Home) VALUES ('Anna','Nguyen','675 Guthriesville Road','Downingtown','PA','19337','321-654-7894');


select * from parents;

-----------------------------------------------------------------------------------------------------------------------------


CREATE TABLE Students
(
  ID 			Serial not null primary key, 
  Student_FirstName	VARCHAR,
  Student_LastName 	VARCHAR,
  Grade 		VARCHAR,
  DateOfBirth		DATE,
  Gender		VARCHAR,
  Registration_Date	DATE,
  email			VARCHAR,
  Tel_Mobile		VARCHAR,
  Parent_ID		int NOT NULL

  CONSTRAINT parent_refs_ID
  REFERENCES Parents(ID)
);

INSERT INTO Students ( Student_FirstName,  Student_LastName,  Grade,  DateOfBirth,  Gender,  Registration_Date,  email,  Tel_Mobile,  Parent_ID) VALUES ('David','Nguyen','12','03/19/1997','M','3/20/2011','dn@gamil.com','1236547895','4');
INSERT INTO Students ( Student_FirstName,  Student_LastName,  Grade,  DateOfBirth,  Gender,  Registration_Date,  email,  Tel_Mobile,  Parent_ID) VALUES ('Maria','Khan','12','9/16/1997','F','3/20/2012','mk@gmail.com','1236547896','2');
INSERT INTO Students ( Student_FirstName,  Student_LastName,  Grade,  DateOfBirth,  Gender,  Registration_Date,  email,  Tel_Mobile,  Parent_ID) VALUES ('Alicia','Johnson','11','9/27/1998','F','6/20/2013','aj@gmail.com','1234567890','1');
INSERT INTO Students ( Student_FirstName,  Student_LastName,  Grade,  DateOfBirth,  Gender,  Registration_Date,  email,  Tel_Mobile,  Parent_ID) VALUES ('Shannon','Johnson','10','1/4/2000','F','6/20/2013','sj@gmail.com','1234567890','1');
INSERT INTO Students ( Student_FirstName,  Student_LastName,  Grade,  DateOfBirth,  Gender,  Registration_Date,  email,  Tel_Mobile,  Parent_ID) VALUES ('Saad','Khan','10','2/8/2000','M','3/20/2012','sk@gmail.com','1234569874','2');
INSERT INTO Students ( Student_FirstName,  Student_LastName,  Grade,  DateOfBirth,  Gender,  Registration_Date,  email,  Tel_Mobile,  Parent_ID) VALUES ('Gabriel','Rodriguez','10','8/27/2001','F','6/20/2012','gr@gmail.com','1234567895','3');
INSERT INTO Students ( Student_FirstName,  Student_LastName,  Grade,  DateOfBirth,  Gender,  Registration_Date,  email,  Tel_Mobile,  Parent_ID) VALUES ('Tamara','Johnson','9','6/27/2002','F','6/27/2013','tj@gmail.com','1234567890','1');
INSERT INTO Students ( Student_FirstName,  Student_LastName,  Grade,  DateOfBirth,  Gender,  Registration_Date,  email,  Tel_Mobile,  Parent_ID) VALUES ('Benjamin','Rodriguez','9','9/5/2002','M','6/20/2012','br@gmail.com','1234567895','3');

SELECT * FROM Students;

-----------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Classrooms
(
  ID 		Serial not null primary key, 
  Room_Number	VARCHAR,
  Capacity 	int,
  Teacher_ID 	int
);

INSERT INTO Classrooms ( Room_Number,  Capacity,  Teacher_ID) VALUES ('N20' , 20, 1);
INSERT INTO Classrooms ( Room_Number,  Capacity,  Teacher_ID) VALUES ('S30' , 30, 2);
INSERT INTO Classrooms ( Room_Number,  Capacity,  Teacher_ID) VALUES ('E56' , 30, 3);
INSERT INTO Classrooms ( Room_Number,  Capacity,  Teacher_ID) VALUES ('W89' , 30, 4);

select * from Classrooms;

-----------------------------------------------------------------------------------------------------------------------------


CREATE TABLE Teachers
(
  ID 			Serial not null primary key, 
  Teacher_FirstName	VARCHAR,
  Teacher_LastName 	VARCHAR,
  Hire_Date 		VARCHAR,
  Subject		VARCHAR
);

INSERT INTO Teachers ( Teacher_FirstName,  Teacher_LastName,  Hire_Date,  Subject) VALUES ('Sandra','Jones','1/20/2013','Science');
INSERT INTO Teachers ( Teacher_FirstName,  Teacher_LastName,  Hire_Date,  Subject) VALUES ('Ken','Pugh','1/21/2013','Math');
INSERT INTO Teachers ( Teacher_FirstName,  Teacher_LastName,  Hire_Date,  Subject) VALUES ('Brad','Snow','1/22/2013','Social Studies');
INSERT INTO Teachers ( Teacher_FirstName,  Teacher_LastName,  Hire_Date,  Subject) VALUES ('Amy','Kehoe','5/20/2012','English');

SELECT * FROM Teachers;

-----------------------------------------------------------------------------------------------------------------------------



CREATE TABLE Student_Classroom
(
  ID 		Serial not null primary key,  
  Classroom_ID	int,
  Student_ID 	int
);

INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (1,1);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (2,1);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (3,1);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (4,1);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (1,2);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (2,2);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (3,2);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (4,2);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (1,3);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (2,3);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (3,3);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (4,3);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (1,4);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (2,4);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (3,4);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (4,4);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (1,5);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (2,5);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (3,5);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (4,5);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (1,6);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (2,6);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (3,6);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (4,6);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (1,7);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (2,7);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (3,7);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (4,7);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (1,8);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (2,8);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (3,8);
INSERT INTO Student_Classroom (Classroom_ID, Student_ID ) VALUES (NULL,8);

SELECT * FROM Student_Classroom
order by classroom_id, student_id;

-----------------------------------------------------------------------------------------------------------------------------


select 	p.Parent_FirstName || ' ' || p.Parent_lastName as ParentName,
	s.Student_FirstName || ' ' || s.Student_LastName as StudentName,
	s.grade,
	case when t.id is null then '***Missing Classroom Assignment***' else t.subject end,
	t.Teacher_FirstName || ' '|| t.Teacher_LastName as Teacher,
	c.Room_number
from Parents p
inner join Students s  		on p.id = s.parent_id
inner join student_classroom sc	on sc.student_ID = s.id
left outer join Classrooms c	on c.id = sc.Classroom_id
left outer join Teachers t		on c.teacher_ID = t.id
order by p.id, s.id, t.subject

--------------------------------------------------------------------------------------------------------

--Referential integrity does not allow me to delete from parents table first, I must delete from students table first in order to delete from parents table
/*
delete from students
where Parent_id = 1

delete from parents
where id = 1
*/


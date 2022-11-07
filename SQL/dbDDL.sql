-- Create the table Room
Create Table Room(
    Room_id CHAR(5) Not Null,
    Building VARCHAR(45) Not Null,
    Floor INT Not Null,
    PRIMARY KEY(Room_id)
);

-- Create Instructor
Create Table Instructor(
    NUID CHAR(9) Not Null,
    Email VARCHAR(320) Not Null,
    Name VARCHAR(45) Not Null,
    PRIMARY KEY(NUID)
);

-- Create Course
Create Table Course(
Course_id		CHAR(4)	        NOT NULL,
Semester		VARCHAR(15)	    NOT NULL,
Max_capacity	INT	            NOT NULL,
Department		CHAR(2)	        NOT NULL,
Rating			DECIMAL(2,1)	NOT NULL,
Course_type	    VARCHAR(15)	    NOT NULL,
Instructor_id	CHAR(9)	        NOT NULL,
Course_time	    TIME(4)	        NOT NULL,
Course_day      CHAR(3)         NOT NULL,
ClassRoom	    CHAR(5),

PRIMARY KEY (Course_id),
FOREIGN KEY (Instructor_id) REFERENCES Instructor(NUID),
FOREIGN KEY (ClassRoom) REFERENCES Room(Room_id)
);




-- VIEW
CREATE VIEW timetable
AS Select c.course_id, c.course_time, c.Course_day, r.Room_id, r.Building, r.Floor
FROM Course as c, Room as r
WHERE c.ClassRoom = r.Room_idtimetable


-- Create table Admin
-- NUID (PK), Email, Name
use khouryCourseRegistration;
create table Admin
(
	NUID	VARCHAR(9) NOT NULL,
    Email	VARCHAR(320) NOT NULL,
    Name	VARCHAR(45) NOT NULL,
    PRIMARY KEY (NUID));
    
-- nuid, email, name, department

-- Create table Advisor
create table Advisor
(
	NUID	VARCHAR(9) NOT NULL,
    Email	VARCHAR(320) NOT NULL,
    Name	VARCHAR(45) NOT NULL,
    Department VARCHAR(2) NOT NULL,
    PRIMARY KEY (NUID));


-- Create table Student
-- nuid, email, name, visa_type, department, credits
create table Student
(
	NUID	VARCHAR(9) NOT NULL,
    Email	VARCHAR(320) NOT NULL,
    Name	VARCHAR(45) NOT NULL,
    Visa_type INT(1) NOT NULL, 
    Department VARCHAR(2) NOT NULL,
    Credits INT(2) NOT NULL,
    PRIMARY KEY (NUID));

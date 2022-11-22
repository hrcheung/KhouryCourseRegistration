USE khouryCourseRegistration;

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
Course_name		VARCHAR(50)		NOT NULL,
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

-- Create table Admin
-- NUID (PK), Email, Name
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
	NUID		VARCHAR(9) NOT NULL,
    Email		VARCHAR(320) NOT NULL,
    Name		VARCHAR(45) NOT NULL,
    Visa_type 	INT(1) NOT NULL, 
    Department 	VARCHAR(2) NOT NULL,
    Credits 	INT(2) NOT NULL,
    Advisor 	VARCHAR(9) NOT NULL,
    PRIMARY KEY (NUID));

-- Create the table Message
Create Table Message(
Message_id CHAR(5) Not Null,
Receiver_nuid CHAR(9) Not Null,
Sender_nuid CHAR(9) Not Null,
Message_time DATE Not Null,
Content VARCHAR(100),
Replied BIT(1) Not Null,
PRIMARY KEY (Message_id),
FOREIGN KEY (Sender_nuid) REFERENCES Student(NUID),
FOREIGN KEY (Receiver_nuid) REFERENCES Advisor(NUID)
);


-- Create the table Registration_Ticket
Create Table Registration_Ticket(
Ticket_id CHAR(9) Not Null,
Course_id CHAR(4) Not Null,
SNuid CHAR(9) Not Null,
Ticket_time DATE Not Null,

PRIMARY KEY (Ticket_id),
FOREIGN KEY (Course_id) REFERENCES Course(Course_id),
FOREIGN KEY (SNuid) REFERENCES Student(NUID)
);


-- Create the table Registration_List
Create Table Registration_List(
Course_id CHAR(4) Not Null,
SNuid CHAR(9) Not Null,

FOREIGN KEY (Course_id) REFERENCES Course(Course_id),
FOREIGN KEY (SNuid) REFERENCES Student(NUID)
);





-- VIEW
DROP VIEW IF EXISTS timetable;
CREATE VIEW timetable
AS Select c.course_id, c.course_time, c.Course_day, r.Room_id, r.Building, r.Floor
FROM Course as c, Room as r
WHERE c.ClassRoom = r.Room_id;


-- create a procedure
drop procedure if exists advisor_name;
delimiter $$
create procedure advisor_name() select distinct Name from Advisor $$
delimiter ;


DROP procedure IF EXISTS approve_tickets;

DELIMITER $$
CREATE PROCEDURE approve_tickets (course CHAR(4))
BEGIN


  declare done int default 0;
  declare NUID CHAR(9);
  declare nuidcur cursor for select SNuid from Registration_Ticket where course_id = course;
  declare continue handler for not found set done = 1;

  open nuidcur;

  repeat
    fetch nuidcur into NUID;
    insert into Registration_List values(course, NUID);
  until done
  end repeat;

  close nuidcur;

END$$

DELIMITER ;


-- Trigger: if the course type changed from "Traditional" to "Live Stream", "Max_capacity" will increase.
DROP TRIGGER IF EXISTS update_course_capacity;
DELIMITER $$
CREATE TRIGGER update_course_capacity
    BEFORE UPDATE
    ON Course FOR EACH ROW
begin
    set new.Max_capacity = old.Max_capacity + 50;
end; $$
DELIMITER $$



DELIMITER ; 



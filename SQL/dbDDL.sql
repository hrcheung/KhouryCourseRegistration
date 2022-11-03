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
WHERE c.ClassRoom = r.Room_idtimetable;

CREATE VIEW course_remained_seat
AS SELECT c.Course_id, c.Max_capacity, (c.Max_capacity - reg_amount.sum_reg) as remained
FROM Course as c,
    (SELECT Course_id, count(SNuid) as sum_reg
	FROM Registration_List
	GROUP BY Course_id) reg_amount
WHERE c.Course_id = reg_amount.Course_id
ORDER BY c.Course_id;

-- Procudure
USE `khouryCourseRegistration`;
DROP procedure IF EXISTS `approve_tickets`;

DELIMITER $$ 
USE `khouryCourseRegistration`$$
CREATE PROCEDURE `approve_tickets` (course CHAR(4))
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


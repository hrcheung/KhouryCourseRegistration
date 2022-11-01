-- NUID (PK), Email, Name
use khouryCourseRegistration;
create table Admin
(
	NUID	VARCHAR(9) NOT NULL,
    Email	VARCHAR(320) NOT NULL,
    Name	VARCHAR(45) NOT NULL,
    PRIMARY KEY (NUID));
    
-- nuid, email, name, department

create table Advisor
(
	NUID	VARCHAR(9) NOT NULL,
    Email	VARCHAR(320) NOT NULL,
    Name	VARCHAR(45) NOT NULL,
    Department VARCHAR(2) NOT NULL,
    PRIMARY KEY (NUID));

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

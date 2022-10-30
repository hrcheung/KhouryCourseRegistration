-- NUID (PK), Email, Name
create table Admin
(
	NUID	VARCHAR(9) NOT NULL,
    Email	VARCHAR(30) NOT NULL,
    Name	VARCHAR(16) NOT NULL,
    PRIMARY KEY (NUID));
    
-- nuid, email, name, department

create table Admin
(
	NUID	VARCHAR(9) NOT NULL,
    Email	VARCHAR(30) NOT NULL,
    Name	VARCHAR(16) NOT NULL,
    Department VARCHAR(16) NOT NULL,
    PRIMARY KEY (NUID),
    FOREIGN KEY (NUID) REFERENCES Message(Receiver_nuid),
    FOREIGN KEY (NUID) REFERENCES Message(Sender_nuid));

-- nuid, email, name, visa_type, department, credits
create table Student
(
	NUID	VARCHAR(9) NOT NULL,
    Email	VARCHAR(30) NOT NULL,
    Name	VARCHAR(16) NOT NULL,
    Visa_type VARCHAR(10) NOT NULL, 
    Department VARCHAR(16) NOT NULL,
    Credits INT(2) NOT NULL,
    PRIMARY KEY (NUID),
	FOREIGN KEY (NUID) REFERENCES Message(Receiver_nuid),
    FOREIGN KEY (NUID) REFERENCES Message(Sender_nuid));

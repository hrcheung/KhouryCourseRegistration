-- Create the table Message
Create Table Message(
Message_id CHAR(5) Not Null,
Receiver_nuid CHAR(9) Not Null,
Sender_nuid CHAR(9) Not Null,
Message_time DATE Not Null,
Content VARCHAR(10) Not Null,
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


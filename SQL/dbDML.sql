
-- Sample Value Instructor
INSERT INTO Instructor VALUES(300100101,'jeo.lee@northeastern.edu','Lee Jeongkyu');
INSERT INTO Instructor VALUES(300100102,'dongmei.ma@northeastern.edu', 'Ma Dongmei');
INSERT INTO Instructor VALUES(300100103,'hugo.ma@northeastern.edu', 'Hugo Mathew');
INSERT INTO Instructor VALUES(300100104,'anna.ot@northeastern.edu', 'Anna Otake');
INSERT INTO Instructor VALUES(300100105,'martin.johnson@northeastern.edu', 'Martin Johnson');
INSERT INTO Instructor VALUES(300100106,'john.carter@northeastern.edu', 'John Carter');
INSERT INTO Instructor VALUES(300100107,'Sherri.lu@northeastern.edu', 'Sherri Ledoux');

-- Sample Value Room
INSERT INTO Room VALUES(1045, '4 N 2nd St',10);
INSERT INTO Room VALUES(1032,'4 N 2nd St',10);
INSERT INTO Room VALUES(901,'4 N 2nd St',9);
INSERT INTO Room VALUES(903,'4 N 2nd St',9);
INSERT INTO Room VALUES(905,'4 N 2nd St',9);
INSERT INTO Room VALUES(1001,'75 E Santa Clara',10);
INSERT INTO Room VALUES(1002,'75 E Santa Clara',10);

-- Sample Value Course
INSERT INTO Course VALUES('5004','Object-Oriented Design', 'Summer', 45, 'CS', 9.3, 'Traditional', '300100105', '13:00:00', 'Fri', '1045');
INSERT INTO Course VALUES('5800','Algorithms', 'Spring', 30, 'CS', 7.1, 'Traditional', '300100102', '18:00:00', 'Mon', '1032');
INSERT INTO Course VALUES('5002','Discrete Structures', 'Summer', 45, 'CS', 7.7, 'Traditional', '300100106', '18:00:00', 'Mon', '1045');
INSERT INTO Course VALUES('6650','Building Scalable Distributed Systems', 'Fall', 80, 'CS', 9.4, 'Online', '300100104', '13:00:00', 'Mon', null);
INSERT INTO Course VALUES('5008','Data Structures, Algorithms, and Computer Systems', 'Spring', 45, 'CS', 8.4, 'Live Stream', '300100104', '18:00:00', 'Thu', '1002');
INSERT INTO Course VALUES('6120','Natural Language Processing', 'Fall', 80, 'CS', 8.3, 'Live Stream', '300100102', '18:00:00', 'Thu', '1032');
INSERT INTO Course VALUES('5001','Intensive Foundations of Computer Science', 'Summer', 45, 'CS', 8.5, 'Traditional', '300100107', '18:00:00', 'Tue', '1002');
INSERT INTO Course VALUES('5200','Database Management Systems', 'Spring', 30, 'CS', 9.8, 'Traditional', '300100101', '18:00:00', 'Wed', '1045');
INSERT INTO Course VALUES('5220','Supervised Machine Learning and Learning Theory', 'Spring', 80, 'DS', 8.7, 'Online', '300100103', '13:00:00', 'Wed', null);
INSERT INTO Course VALUES('5110','Introduction to Data Management and Processing', 'Spring', 25, 'DS', 9.5, 'Traditional', '300100101', '13:00:00', 'Wed', '1001');

-- Sample Value Admin
--  NUID (PK), Email, Name
insert into Admin (NUID, Email, Name)
Values ('000000001','01@northeastern.edu','John'),
('000000002','02@northeastern.edu','Alex'),
('000000003','03@northeastern.edu','Peter'),
('000000004','04@northeastern.edu','Daniel'),
('000000005','06@northeastern.edu','Ivan'),
('000000006','07@northeastern.edu','Leslie'),
('000000007','08@northeastern.edu','Matt');

-- Sample Value Advisor
insert into Advisor (NUID, Email, Name, Department)
Values 
('000000008','anna@northeastern.edu','Anna Olson','CS'),
('000000009','09@northeastern.edu','Rex','CS'),
('000000010','10@northeastern.edu','Wong','CS'),
('000000011','11@northeastern.edu','Lau','DS'),
('000000012','c.xiong@northeastern.edu','Xiong Chung','DS'),
('000000013','13@northeastern.edu','Jackie','DS'),
('000000014','14@northeastern.edu','Seberina','DS');

-- Sample Value Student
insert into Student (NUID, Email, Name, Department, Visa_type, Credits, Advisor)
Values
('000000015','15@northeastern.edu','Dan','CS','1','44', '000000008'),
('000000016','16@northeastern.edu','Jay','CS','1','44', '000000008'),
('000000017','17@northeastern.edu','Tritiney','CS','0','44','000000008'),
('000000018','18@northeastern.edu','Laura','CS','1','44', '000000008'),
('000000019','19@northeastern.edu','Jack','DS','1','44', '000000012'),
('000000020','20@northeastern.edu','Juan','DS','0','44', '000000012'),
('000000021','21@northeastern.edu','Yuan','DS','1','44', '000000012');

-- Sample Value Message
INSERT INTO Message VALUES(00001, '000000008', '000000015', '2020-12-01', 'Issue for register for class ... ', 1);
INSERT INTO Message VALUES(00002, '000000008', '000000015', '2020-12-03', 'Question about CPT', 1);
INSERT INTO Message VALUES(00003, '000000008', '000000016', '2021-01-30', 'What class should I take for next semester', 1);
INSERT INTO Message VALUES(00004, '000000012', '000000019', '2021-02-01', 'Appointment for 1:1', 0);
INSERT INTO Message VALUES(00005, '000000012', '000000020', '2021-02-01', 'Cancel the appointmen', 1);
INSERT INTO Message VALUES(00006, '000000012', '000000020', '2021-02-10', 'Message from ... ', 1);
INSERT INTO Message VALUES(00007, '000000012', '000000020', '2021-02-19', 'Class recommendation', 1);
INSERT INTO Message VALUES(00008, '000000008', '000000021', '2021-02-25', 'Message test', 1);

-- Sample Value Registration_Ticket
INSERT INTO Registration_Ticket VALUES('000000001', '5001', '000000015', '2021-03-04');
INSERT INTO Registration_Ticket VALUES('000000002', '5110', '000000015', '2021-02-05');
INSERT INTO Registration_Ticket VALUES('000000003', '5220', '000000016', '2021-03-11');
INSERT INTO Registration_Ticket VALUES('000000004', '6120', '000000017', '2021-03-07');
INSERT INTO Registration_Ticket VALUES('000000005', '5110', '000000018', '2021-03-08');
INSERT INTO Registration_Ticket VALUES('000000006', '5220', '000000019', '2021-04-09');
INSERT INTO Registration_Ticket VALUES('000000007', '5004', '000000019', '2021-05-12');
INSERT INTO Registration_Ticket VALUES('000000008', '5110', '000000020', '2021-03-27');

-- Sample Value Registration_List
INSERT INTO Registration_List VALUES('5001', '000000015');
INSERT INTO Registration_List VALUES('5002', '000000015');
INSERT INTO Registration_List VALUES('5004', '000000015');
INSERT INTO Registration_List VALUES('5008', '000000015');
INSERT INTO Registration_List VALUES('5110', '000000015');
INSERT INTO Registration_List VALUES('5800', '000000015');
INSERT INTO Registration_List VALUES('5001', '000000016');
INSERT INTO Registration_List VALUES('5001', '000000016');
INSERT INTO Registration_List VALUES('5002', '000000016');
INSERT INTO Registration_List VALUES('5004', '000000016');
INSERT INTO Registration_List VALUES('5008', '000000016');
INSERT INTO Registration_List VALUES('5200', '000000016');
INSERT INTO Registration_List VALUES('5220', '000000016');
INSERT INTO Registration_List VALUES('5001', '000000017');
INSERT INTO Registration_List VALUES('5002', '000000017');
INSERT INTO Registration_List VALUES('5004', '000000017');
INSERT INTO Registration_List VALUES('5008', '000000017');
INSERT INTO Registration_List VALUES('6120', '000000017');
INSERT INTO Registration_List VALUES('6650', '000000017');
INSERT INTO Registration_List VALUES('5001', '000000018');
INSERT INTO Registration_List VALUES('5002', '000000018');
INSERT INTO Registration_List VALUES('5004', '000000018');
INSERT INTO Registration_List VALUES('5008', '000000018');
INSERT INTO Registration_List VALUES('5110', '000000018');
INSERT INTO Registration_List VALUES('5220', '000000018');
INSERT INTO Registration_List VALUES('5001', '000000019');
INSERT INTO Registration_List VALUES('5002', '000000019');
INSERT INTO Registration_List VALUES('5004', '000000019');
INSERT INTO Registration_List VALUES('5008', '000000019');
INSERT INTO Registration_List VALUES('5220', '000000019');
INSERT INTO Registration_List VALUES('6650', '000000019');
INSERT INTO Registration_List VALUES('5001', '000000020');
INSERT INTO Registration_List VALUES('5002', '000000020');
INSERT INTO Registration_List VALUES('5004', '000000020');
INSERT INTO Registration_List VALUES('5008', '000000020');
INSERT INTO Registration_List VALUES('5220', '000000020');
INSERT INTO Registration_List VALUES('6650', '000000020');
INSERT INTO Registration_List VALUES('5001', '000000021');
INSERT INTO Registration_List VALUES('5002', '000000021');
INSERT INTO Registration_List VALUES('5004', '000000021');
INSERT INTO Registration_List VALUES('5008', '000000021');
INSERT INTO Registration_List VALUES('5110', '000000021');
INSERT INTO Registration_List VALUES('6120', '000000021');
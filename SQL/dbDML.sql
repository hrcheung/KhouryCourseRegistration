
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
INSERT INTO Course VALUES('5004', 'Summer', 45, 'CS', 9.3, 'Traditional', '300100105', '13:00:00', 'Fri', '1045');
INSERT INTO Course VALUES('5800', 'Spring', 30, 'CS', 7.1, 'Traditional', '300100102', '18:00:00', 'Mon', '1032');
INSERT INTO Course VALUES('5002', 'Summer', 45, 'CS', 7.7, 'Traditional', '300100106', '18:00:00', 'Mon', '1045');
INSERT INTO Course VALUES('6700', 'Fall', 80, 'CS', 9.4, 'Online', '300100104', '13:00:00', 'Mon', null);
INSERT INTO Course VALUES('5008', 'Spring', 45, 'CS', 8.4, 'Live Stream', '300100104', '18:00:00', 'Thu', '1002');
INSERT INTO Course VALUES('6100', 'Fall', 80, 'CS', 8.3, 'Live Stream', '300100102', '18:00:00', 'Thu', '1032');
INSERT INTO Course VALUES('5001', 'Summer', 45, 'CS', 8.5, 'Traditional', '300100107', '18:00:00', 'Tue', '1002');
INSERT INTO Course VALUES('5200', 'Spring', 30, 'CS', 9.8, 'Traditional', '300100101', '18:00:00', 'Wed', '1045');
INSERT INTO Course VALUES('5310', 'Spring', 80, 'DS', 8.7, 'Online', '300100103', '13:00:00', 'Wed', null);
INSERT INTO Course VALUES('5110', 'Spring', 25, 'DS', 9.5, 'Traditional', '300100101', '13:00:00', 'Wed', '1001');

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
('000000008','01@northeastern.edu','May','CS'),
('000000009','09@northeastern.edu','Rex','CS'),
('000000010','10@northeastern.edu','Wong','CS'),
('000000011','11@northeastern.edu','Lau','DS'),
('000000012','12@northeastern.edu','Dayday','DS'),
('000000013','13@northeastern.edu','Jackie','DS'),
('000000014','14@northeastern.edu','Seberina','DS');

-- Sample Value Student
insert into Student (NUID, Email, Name, Department, Visa_type, Credits)
Values
('000000015','15@northeastern.edu','Dan','CS','1','44'),
('000000016','16@northeastern.edu','Jay','CS','1','44'),
('000000017','17@northeastern.edu','Tritiney','CS','0','44'),
('000000018','18@northeastern.edu','Laura','CS','1','44'),
('000000019','19@northeastern.edu','Jack','DS','1','44'),
('000000020','20@northeastern.edu','Juan','DS','0','44'),
('000000021','21@northeastern.edu','Yuan','DS','1','44');

-- Sample Value Message
INSERT INTO Message VALUES(00001, 000000008, 000000015, 12/1/2020, 'AA', 1);
INSERT INTO Message VALUES(00002, 000000009, 000000015, 12/3/2020, 'BB', 1);
INSERT INTO Message VALUES(00003, 000000010, 000000016, 1/30/2021, 'CC', 1);
INSERT INTO Message VALUES(00004, 000000011, 000000019, 2/1/2021, 'DD', 0);
INSERT INTO Message VALUES(00005, 000000012, 000000020, 2/1/2021, 'EE', 1);
INSERT INTO Message VALUES(00006, 000000009, 000000020, 2/10/2021, 'FF', 1);
INSERT INTO Message VALUES(00007, 000000008, 000000020, 2/19/2021, 'GG', 1);
INSERT INTO Message VALUES(00008, 000000009, 000000021, 2/25/2021, 'HH', 1);

-- Sample Value Registration_Ticket
INSERT INTO Registration_Ticket VALUES(000000001, '5001', 000000015, 3/4/2021);
INSERT INTO Registration_Ticket VALUES(000000002, '5110', 000000015, 2/5/2021);
INSERT INTO Registration_Ticket VALUES(000000003, '5310', 000000016, 3/11/2021);
INSERT INTO Registration_Ticket VALUES(000000004, '6100', 000000017, 3/7/2021);
INSERT INTO Registration_Ticket VALUES(000000005, '5110', 000000018, 3/8/2021);
INSERT INTO Registration_Ticket VALUES(000000006, '5310', 000000019, 4/9/2021);
INSERT INTO Registration_Ticket VALUES(000000007, '5004', 000000019, 5/12/2021);
INSERT INTO Registration_Ticket VALUES(000000008, '5110', 000000020, 3/27/2021);

-- Sample Value Registration_List
INSERT INTO Registration_List VALUES('5001', 000000015);
INSERT INTO Registration_List VALUES('5002', 000000015);
INSERT INTO Registration_List VALUES('5004', 000000015);
INSERT INTO Registration_List VALUES('5008', 000000015);
INSERT INTO Registration_List VALUES('5110', 000000015);
INSERT INTO Registration_List VALUES('5800', 000000015);
INSERT INTO Registration_List VALUES('5001', 000000016);
INSERT INTO Registration_List VALUES('5001', 000000016);
INSERT INTO Registration_List VALUES('5002', 000000016);
INSERT INTO Registration_List VALUES('5004', 000000016);
INSERT INTO Registration_List VALUES('5008', 000000016);
INSERT INTO Registration_List VALUES('5200', 000000016);
INSERT INTO Registration_List VALUES('5310', 000000016);
INSERT INTO Registration_List VALUES('5001', 000000017);
INSERT INTO Registration_List VALUES('5002', 000000017);
INSERT INTO Registration_List VALUES('5004', 000000017);
INSERT INTO Registration_List VALUES('5008', 000000017);
INSERT INTO Registration_List VALUES('6100', 000000017);
INSERT INTO Registration_List VALUES('6700', 000000017);
INSERT INTO Registration_List VALUES('5001', 000000018);
INSERT INTO Registration_List VALUES('5002', 000000018);
INSERT INTO Registration_List VALUES('5004', 000000018);
INSERT INTO Registration_List VALUES('5008', 000000018);
INSERT INTO Registration_List VALUES('5110', 000000018);
INSERT INTO Registration_List VALUES('5310', 000000018);
INSERT INTO Registration_List VALUES('5001', 000000019);
INSERT INTO Registration_List VALUES('5002', 000000019);
INSERT INTO Registration_List VALUES('5004', 000000019);
INSERT INTO Registration_List VALUES('5008', 000000019);
INSERT INTO Registration_List VALUES('5310', 000000019);
INSERT INTO Registration_List VALUES('6700', 000000019);
INSERT INTO Registration_List VALUES('5001', 000000020);
INSERT INTO Registration_List VALUES('5002', 000000020);
INSERT INTO Registration_List VALUES('5004', 000000020);
INSERT INTO Registration_List VALUES('5008', 000000020);
INSERT INTO Registration_List VALUES('5310', 000000020);
INSERT INTO Registration_List VALUES('6700', 000000020);
INSERT INTO Registration_List VALUES('5001', 000000021);
INSERT INTO Registration_List VALUES('5002', 000000021);
INSERT INTO Registration_List VALUES('5004', 000000021);
INSERT INTO Registration_List VALUES('5008', 000000021);
INSERT INTO Registration_List VALUES('5110', 000000021);
INSERT INTO Registration_List VALUES('6100', 000000021);
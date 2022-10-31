
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

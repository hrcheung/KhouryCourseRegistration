--  NUID (PK), Email, Name
use khouryCourseRegistration;
insert into Admin (NUID, Email, Name)
Values ('000000001','01@northeastern.edu','John'),
('000000002','02@northeastern.edu','Alex'),
('000000003','03@northeastern.edu','Peter'),
('000000004','04@northeastern.edu','Daniel'),
('000000005','06@northeastern.edu','Ivan'),
('000000006','07@northeastern.edu','Leslie'),
('000000007','08@northeastern.edu','Matt');

insert into Advisor (NUID, Email, Name, Department)
Values 
('000000008','01@northeastern.edu','May'),
('000000009','09@northeastern.edu','Rex'),
('000000010','10@northeastern.edu','Wong'),
('000000011','11@northeastern.edu','Lau'),
('000000012','12@northeastern.edu','Dayday'),
('000000013','13@northeastern.edu','Jackie'),
('000000014','14@northeastern.edu','Seberina');

insert into Student (NUID, Email, Name, Department, Visa_type, Credits)
Values
('000000015','15@northeastern.edu','May'),
('000000016','16@northeastern.edu','Rex'),
('000000017','17@northeastern.edu','Wong'),
('000000018','18@northeastern.edu','Lau'),
('000000019','19@northeastern.edu','Dayday'),
('000000020','20@northeastern.edu','Jackie'),
('000000021','21@northeastern.edu','Seberina');

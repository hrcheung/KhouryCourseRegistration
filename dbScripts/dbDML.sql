--  NUID (PK), Email, Name
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
('000000008','01@northeastern.edu','May','CS'),
('000000009','09@northeastern.edu','Rex','CS'),
('000000010','10@northeastern.edu','Wong','CS'),
('000000011','11@northeastern.edu','Lau','DS'),
('000000012','12@northeastern.edu','Dayday','DS'),
('000000013','13@northeastern.edu','Jackie','DS'),
('000000014','14@northeastern.edu','Seberina','DS');

insert into Student (NUID, Email, Name, Department, Visa_type, Credits)
Values
('000000015','15@northeastern.edu','Dan','CS','1','44'),
('000000016','16@northeastern.edu','Jay','CS','1','44'),
('000000017','17@northeastern.edu','Tritiney','CS','0','44'),
('000000018','18@northeastern.edu','Laura','CS','1','44'),
('000000019','19@northeastern.edu','Jack','DS','1','44'),
('000000020','20@northeastern.edu','Juan','DS','0','44'),
('000000021','21@northeastern.edu','Yuan','DS','1','44');

use KhouryCourseRegistration;
-- Student User
-- Query what class is in a designated classroom on Monday
SELECT Course_id
FROM Course
WHERE Course_day = 'Mon' AND ClassRoom = 1032;

-- For student with NUID = 000000015, Query what courses they have taken in the past semester(spring)
SELECT Course_id
FROM Registation_List
LEFT JOIN Course ON Registration_List.Course_id = Course.Course_id
WHERE Registration_List.SNuid = 000000015 AND Course.Semester = 'Spring';




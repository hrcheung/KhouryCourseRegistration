-- Query students’ name and email who are international and take 0 onsite courses
SELECT f1_student.email, f1_student.name
FROM (SELECT *
	FROM Student
	WHERE Visa_type = 'F1') f1_student 
	LEFT OUTER JOIN
    (SELECT c.Course_id, r.SNuid
	FROM Course as c JOIN Registration_List as r
    ON c.Course_id = r.Course_id
    WHERE c.Course_type = 'online'
    ) online_course
	ON online_course.SNuid = f1_student.NUID
GROUP BY f1_student.email
HAVING count(online_course.Course_id) = 0;

-- Query courses id that reach capacity
SELECT c.Course_id
FROM Course as c,
    (SELECT Course_id, count(SNuid) as sum_reg
	FROM Registration_List
	GROUP BY Course_id) reg_amount
WHERE c.Course_id = reg_amount.Course_id AND c.Max_capacity = reg_amount.sum_reg;


-- Query Admin: check classroom with more than 1 course at the same time to find conflict 
select distinct a.Room_id
from (select Room_id, Course_time from Room join Course on Room.Room_id = Course.ClassRoom order by Room_id) a, 
     (select Room_id, Course_time from Room join Course on Room.Room_id = Course.ClassRoom order by Room_id) b

where a.Room_id - b.Room_id <1;

-- Query Admin: find top 1 course id in ratings and its instructor
select Course_id, Name
from Course left join Instructor on Course.Instructor_id = Instructor.NUID
order by Instructor.Rating desc
limit 1;


-- Query Admin: what Course id have less than 15 registered students? 
select Course_id
from (
	select Course_id, count(SNuid) as cnt
    from khouryCourseRegistration.Registration_List
    ) as tmp
where tmp.cnt<15;

use KhouryCourseRegistration;

-- Student User
-- Query what class is in a designated classroom on Monday
SELECT Course_id
FROM Course
WHERE Course_day = 'Mon' AND ClassRoom = 1032;

-- For student with NUID = 000000015, Query what courses they have taken in the past semester(spring)
SELECT Course_id
FROM Registration_List
LEFT JOIN Course ON Registration_List.Course_id = Course.Course_id
WHERE Registration_List.SNuid = '000000015' ;






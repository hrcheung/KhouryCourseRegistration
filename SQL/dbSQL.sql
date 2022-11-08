USE khouryCourseRegistration;


-- Query students’ name and email who are international and take 0 onsite courses
SELECT f1_student.email, f1_student.name
FROM (SELECT *
	FROM Student
	WHERE Visa_type = '1') f1_student 
	LEFT OUTER JOIN
    (SELECT c.Course_id, r.SNuid
	FROM Course as c JOIN Registration_List as r
    ON c.Course_id = r.Course_id
    WHERE c.Course_type = 'online'
    ) online_course
	ON online_course.SNuid = f1_student.NUID
GROUP BY NUID
HAVING count(online_course.Course_id) = 0;

-- Query courses id, max_capacity and seats remained 
SELECT c.Course_id, c.Max_capacity, (c.Max_capacity - reg_amount.sum_reg) as remained
FROM Course as c,
    (SELECT Course_id, count(SNuid) as sum_reg
	FROM Registration_List
	GROUP BY Course_id) reg_amount
WHERE c.Course_id = reg_amount.Course_id
ORDER BY c.Course_id;

-- Query Admin: check classroom with more than 1 course at the same time to find conflict 
select distinct a.Room_id
from (select Room_id, Course_time from Room join Course on Room.Room_id = Course.ClassRoom order by Room_id) a, 
     (select Room_id, Course_time from Room join Course on Room.Room_id = Course.ClassRoom order by Room_id) b

where a.Room_id - b.Room_id <1;

-- Query Admin: what Course id have less than 15 registered students and its instructor is not Lee? 
select Course_id from
(select Course_id,Instructor_id
from Course 
where Course_id in (
select Course_id
from (
	select Course_id, count(SNuid) as cnt
    from Registration_List
    group by Course_id
    ) as a 
    where cnt<15)) as a left join Instructor on a.Instructor_id=Instructor.NUID
where Instructor.Name NOT LIKE "Lee%";

-- Student User
-- Query what class is in a designated classroom('4N 2nd St') on Monday
SELECT c.Course_id
FROM Course c
         LEFT JOIN Room rr ON c.ClassRoom = rr.Room_id
WHERE c.Course_day = 'Mon' AND rr.Building = '4 N 2nd St';

-- For student with NUID = 000000015, Query what courses they have taken in the past semester(spring)
SELECT r.Course_id
FROM Registration_List r
LEFT JOIN Course c ON c.Course_id = r.Course_id
WHERE SNuid = '000000015' ;






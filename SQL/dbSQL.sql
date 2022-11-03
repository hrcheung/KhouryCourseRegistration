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




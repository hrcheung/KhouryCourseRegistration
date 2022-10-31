use khouryCourseRegistration;

-- Admin: check classroom with more than 1 course at the same time to find conflict 
select distinct a.Room_id
from (select Room_id, Course_time from Room join Course on Room.Room_id = Course.ClassRoom order by Room_id) a, 
     (select Room_id, Course_time from Room join Course on Room.Room_id = Course.ClassRoom order by Room_id) b

where a.Room_id - b.Room_id <1;

-- Admin: find top 1 course id in ratings and its instructor
select Course_id, Name
from Course left join Instructor on Course.Instructor_id = Instructor.NUID
order by Instructor.Rating desc
limit 1;


-- Admin: what Course id have less than 15 registered students? 
select Course_id
from (
	select Course_id, count(SNuid) as cnt
    from khouryCourseRegistration.Registration_List
    ) as tmp
where tmp.cnt<15;




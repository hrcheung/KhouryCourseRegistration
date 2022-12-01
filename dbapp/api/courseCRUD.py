from django.db import connection

def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]


def addCourse(course_id, course_name, capacity, department, type, semester, instructor):
    cursor = connection.cursor()
    SQL = f"INSERT INTO Course (Course_id, Course_name, Max_capacity, Department, Course_type, Semester, Instructor_id) VALUES('{course_id}', '{course_name}', '{capacity}', '{department}', '{type}', '{semester}','{instructor}')"
    cursor.execute(SQL)


def deleteCourse(course_id):
    SQL1 = f"SET FOREIGN_KEY_CHECKS=0"
    SQL2 = f"DELETE FROM Course WHERE Course_id = '{course_id}'"
    SQL3 = f"SET FOREIGN_KEY_CHECKS=1"
    cursor = connection.cursor()
    cursor.execute(SQL1)
    cursor.execute(SQL2)
    cursor.execute(SQL3)


def getAllCourses():
    SQL = f"SELECT * FROM Course"
    cursor = connection.cursor()
    cursor.execute(SQL)
    res = dictfetchall(cursor)
    context = {}
    context["items"] = res
    return context

def connectRoom(course_id, room):
    SQL0 = f"SET FOREIGN_KEY_CHECKS=0;"
    SQL1 = f"SET SQL_SAFE_UPDATES = 0"
    SQL2 = f"UPDATE Course SET ClassRoom = '{room}' WHERE Course_id= '{course_id}'"
    SQL3 = f"SET SQL_SAFE_UPDATES= 1"
    cursor = connection.cursor()
    cursor.execute(SQL0)
    cursor.execute(SQL1)
    cursor.execute(SQL2)
    cursor.execute(SQL3)



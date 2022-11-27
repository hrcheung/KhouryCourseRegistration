from dbapp.api.studentCRUD import dictfetchall
from django.db import connection


def get_all_class(sem):
    cursor = connection.cursor()

    SQL = "SELECT * FROM Course c JOIN course_remained_seat r ON c.Course_id = r.Course_id"
    cursor.execute(SQL)
    res = dictfetchall(cursor)
    return res


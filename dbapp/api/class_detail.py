from dbapp.api.studentCRUD import dictfetchall
from django.db import connection


def get_all_class(sem):
    cursor = connection.cursor()

    SQL = "SELECT * FROM Course "
    cursor.execute(SQL)
    res = dictfetchall(cursor)
    return res


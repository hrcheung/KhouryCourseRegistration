from django.db import connection

from dbapp.api.studentCRUD import dictfetchall

def getTickets(): #this function will return all tickets
    context = {}
    cursor = connection.cursor()

    SQL = "SELECT * FROM Registration_Ticket"
    cursor.execute(SQL)
    res = dictfetchall(cursor)
    context["tickets"] = res
    return context
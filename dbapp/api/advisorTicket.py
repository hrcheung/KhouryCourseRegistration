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

def approve(nuid,courseId):
    cursor=connection.cursor()
    SQL1=f"INSERT INTO Registration_List (Course_id, SNuid) VALUES('{courseId}','{nuid}')"
    SQL2=f"DELETE FROM Registration_Ticket WHERE Course_id = '{courseId}' and SNuid = '{nuid}'"
    cursor.execute(SQL1)
    cursor.execute(SQL2)

def decline(nuid,courseId):
    cursor=connection.cursor()
    SQL=f"DELETE FROM Registration_Ticket WHERE Course_id = '{courseId}' and SNuid = '{nuid}'"
    cursor.execute(SQL)
    
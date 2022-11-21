from django.db import connection


def getRegisterClass(nuid):
    context = {"nuid":nuid}
    cursor = connection.cursor()

    SQL = "SELECT Course_id FROM Registration_List WHERE SNuid = " + str(nuid)
    cursor.execute(SQL)
    res = dictfetchall(cursor)
    for c in res:
        c = add_course_info(c)
        c["status"] = "registed"
    context["classes"] = res

    SQL = "SELECT Course_id FROM Registration_Ticket WHERE SNuid = " + str(nuid)
    cursor.execute(SQL)
    res = dictfetchall(cursor)
    for c in res:
        c = add_course_info(c)
        c["status"] = "submited"
    context["classes"] += res

    return context


def add_course_info(context):
    course_id = context["Course_id"]
    res = getCourseInfo(course_id)
    for k in res:
        context[k] = res[k]
    return context



def getCourseInfo(courseId):
    cursor = connection.cursor()

    SQL = "SELECT Semester FROM Course WHERE Course_id = " + str(courseId)
    cursor.execute(SQL)
    res = dictfetchall(cursor)
    return res[0]

def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]
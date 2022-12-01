"""dbtest URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from dbapp import views
urlpatterns = [
    # path('admin/', admin.site.urls),
    path('',views.home),
    path('student', views.student_page),
    path('advisor', views.advisor_page),

    path('student/lookup', views.getStudentNuid.as_view()),
    path('student/<nuid>', views.getRegistStudent),
    path('student/<nuid>/<course_id>', views.dropClass),

    path('student_regist', views.get_semester.as_view()),
    path('student_regist/<sem>', views.show_class),
    path('student_regist/register/<course_id>', views.registerClass.as_view()),

    path('class/<course_id>', views.get_course_detal),
    path('advisor_approve',views.getRegistTicket),
    path('advisor_approve/approve/<nuid>/<course_id>',views.approveClass.as_view()),
    path('advisor_approve/decline/<nuid>/<course_id>',views.declineClass.as_view())


]

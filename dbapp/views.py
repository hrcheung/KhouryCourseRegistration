from django.shortcuts import render, redirect
from django.views.generic import TemplateView

from .api.class_detail import get_all_class
from .models import Visitor
from .api.studentCRUD import getRegisterClass, get_course_info


# Create your views here.
def home(request):
    return render(request, 'home.html')


def student_page(request):
    return render(request, 'student_main.html')


def advisor_page(request):
    return render(request, 'advisor_main.html')


class getStudentNuid(TemplateView):
    template_name = 'student_lookup.html'

    def post(self, req):
        return redirect("/student/" + req.POST.get("nuid"), {"nuid": req.POST.get("nuid")})


class get_semester(TemplateView):
    template_name = 'regist_pick_semester.html'
    def post(self, req):
        return redirect("/student_regist/" + req.POST.get("semester"), {"semester": req.POST.get("semester")})

def show_class(request, sem):
    context = {"semester": sem, "classes": get_all_class(sem)}

    return  render(request, 'regist_list_course.html', context)

def getRegistStudent(request, nuid):
    context = getRegisterClass(nuid)
    return render(request, 'student_detail.html', context)


def get_course_detal(request, course_id):
    context = get_course_info(course_id)
    return render(request, 'course_detail.html', context)

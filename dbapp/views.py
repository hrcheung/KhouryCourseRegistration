from django.shortcuts import render, redirect
from django.views.generic import TemplateView

from .models import Visitor
from .api.studentCRUD import getRegisterClass


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
        return redirect("/student/" + req.POST.get("nuid"), {"nuid":req.POST.get("nuid")})


def getRegistStudent(request, nuid):
    context = getRegisterClass(nuid)
    return render(request, 'student_detail.html', context)

from django.shortcuts import render, redirect
from django.views.generic import TemplateView, DeleteView

from dbapp.api.advisorTicket import approve, decline, getTickets

from .api.class_detail import get_all_class
from .models import Visitor
from .api.studentCRUD import getRegisterClass, get_course_info, register, deleteTicket



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


class registerClass(TemplateView):
    template_name = 'regist_enter_nuid.html'

    def get(self, req, course_id):
        return render(req, self.template_name, {'course_id': course_id})

    def post(self, req, course_id):
        nuid = req.POST.get("nuid")
        register(nuid, course_id)
        return redirect("/student/" + nuid, {"nuid": nuid})


def show_class(request, sem):
    context = {"semester": sem, "classes": get_all_class(sem)}

    return render(request, 'regist_list_course.html', context)


def dropClass(req, nuid, course_id):
    deleteTicket(nuid, course_id, 'Registration_List')
    deleteTicket(nuid, course_id, 'Registration_Ticket')
    return redirect("/student/" + nuid, {"nuid": nuid})

def getRegistStudent(request, nuid):
    context = getRegisterClass(nuid)
    return render(request, 'student_detail.html', context)


def get_course_detal(request, course_id):
    context = get_course_info(course_id)
    return render(request, 'course_detail.html', context)

def getRegistTicket(request):
    context=getTickets()
    return render(request,'regist_ticket.html',context)

class approveClass(TemplateView):
    template_name='advisor_decide_nuid.html'
    def get(self, req, course_id, nuid):
        return render(req, self.template_name, {'course_id': course_id, 'nuid': nuid})

    def post(self, req, course_id, nuid):
        approve(nuid, course_id)
        return redirect("/advisor_approve")
    
class declineClass(TemplateView):
    template_name='advisor_decide_nuid.html'
    def get(self, req, course_id, nuid):
        return render(req, self.template_name, {'course_id': course_id, 'nuid': nuid})

    def post(self, req, course_id, nuid):
        decline(nuid, course_id)
        return redirect("/advisor_approve")
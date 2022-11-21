from django.shortcuts import render
from .models import Visitor
# Create your views here.


def testmysql(request):
	return render(request,'home.html')
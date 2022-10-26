from django.shortcuts import render
from .models import Visitor
# Create your views here.


def testmysql(request):
	visitor=Visitor.objects.all()
	context={
		'visitor_fname':visitor[0].fname,
		'visitor_nuid':visitor[0].nuid,
	}
	return render(request,'home.html',context)
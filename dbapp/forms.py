from django import forms
from django.forms import ModelForm
from .models import Course


# Create a course forms
class CourseForm(ModelForm):
    class Meta:
        model = Course
        fields = ('course_id', 'course_name', 'semester', 'max_capacity', 'department', 'course_type', 'classroom', 'instructor')
        labels = {
            'course_id': '',
            'course_name': '',
            'semester': '',
            'max_capacity': '',
            'department': '',
            'course_type': '',
            'classroom': '',
            'instructor': '',
        }
        widgets = {
        'course_id': forms.TextInput(attrs={'class':'form-control', 'placeholder': 'Course ID'}),
        'course_name': forms.TextInput(attrs={'class':'form-control', 'placeholder': 'Course Name'}),
        'semester': forms.TextInput(attrs={'class':'form-control'}),
        'max_capacity': forms.TextInput(attrs={'class':'form-control', 'placeholder': 'Capacity'}),
        'department': forms.TextInput(attrs={'class':'form-control'}),
        'course_type': forms.TextInput(attrs={'class':'form-control'}),
        'classroom': forms.TextInput(attrs={'class':'form-control', 'placeholder': 'ClassRoom'}),
        'instructor': forms.TextInput(attrs={'class':'form-control', 'placeholder': 'instructor'}),
        }


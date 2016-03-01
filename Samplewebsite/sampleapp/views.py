from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.shortcuts import render_to_response
from Samplewebsite.sampleapp.models import Student

def home(request):
    data=Student.objects.all()
    return render(request, 'login.html',{'data':data})

def abcd(request):
    if request.method == "POST":
	    
        user_name=request.POST.get('tname')
        user_age = request.POST.get('tage')
        user_standard=request.POST.get('tstandard')
        user_dob = request.POST.get('tdob')
        user_rollno=request.POST.get('trollno')
        user_school = request.POST.get('tschool')
        c=Student.objects.create(name=user_name,age=user_age,standard=user_standard,dob=user_dob,rollno=user_rollno,school=user_school)
        return render(request, 'success.html',{'user_name':user_name, 'password':user_age})
        
# Create your views here.
 

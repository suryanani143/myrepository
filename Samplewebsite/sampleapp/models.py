from django.db import models

# Create your models here.
class Student(models.Model):
    name=models.CharField(max_length=30)
    age=models.CharField(max_length=5)
    standard=models.CharField(max_length=3)
    dob=models.DateTimeField()
    rollno=models.CharField(max_length=10)
    school=models.CharField(max_length=15)
    def __unicode__(self):
        return self.name
    

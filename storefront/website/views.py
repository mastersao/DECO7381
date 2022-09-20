from django.shortcuts import render
from .models import Member
from django.http import HttpResponse

# Create your views here.
def say_hello(request):
    return render(request, 'hello.html', {'name':'james'})

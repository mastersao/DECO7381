from django.db import models

class Member(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=100)
    email = models.EmailField(max_length=100)
    password = models.CharField(max_length=50)
    age = models.IntegerField()
    
    def __str__(self) -> str:
        return self.first_name + " " + self.last_name
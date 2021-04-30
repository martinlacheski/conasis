from django.db import models

# Create your models here.

class paises(models.Model):
    pais = models.CharField(max_length=50)

""" class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=hhh200)
    votes = models.IntegerField(default=0) """
from django.db import models

# Create your models here.


class Mining(models.Model):

	name = models.CharField(max_length=500, null=True, blank=True)
	category = models.CharField(max_length=500, null=True, blank=True)
	likes = models.CharField(max_length=50, null=True, blank=True)
	location = models.CharField(max_length=200, null=True, blank=True) 

	class Meta:
		verbose_name = "MINING"
		verbose_name_plural = "MINING"

	def __str__(self):
		return self.name
		
	
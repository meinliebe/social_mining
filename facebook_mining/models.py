from django.db import models

# Create your models here.


class Mining(models.Model):

	facebook_id = models.CharField(max_length=100, null=True, blank=True, unique=True)
	name = models.CharField(max_length=500, null=True, blank=True)
	category = models.CharField(max_length=500, null=True, blank=True)
	likes = models.IntegerField(null=True, blank=True)
	location = models.CharField(max_length=200, null=True, blank=True) 
	city = models.CharField(max_length=200, null=True, blank=True) 

	class Meta:
		verbose_name = "MINING"
		verbose_name_plural = "MINING"

	def __str__(self):
		return self.name
		

class Page_feed(models.Model):

	page_id = models.CharField(max_length=100, null=True, blank=True, unique=True)
	feed_id = models.CharField(max_length=100,null=True,blank=True, unique=True)
	created_time = models.DateField(null=True, blank=True)
	message = models.CharField(max_length=9999, null=True, blank=True)

	class Meta:
		verbose_name = "PAGE FEED"
		verbose_name_plural = "PAGE FEED"

	def __str__(self):
		return self.feed_id
	
	
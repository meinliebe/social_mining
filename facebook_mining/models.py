from django.db import models

# Create your models here.


class Mining(models.Model):

	facebook_id = models.CharField(max_length=100, null=True, blank=True, unique=True)
	name = models.CharField(max_length=500, null=True, blank=True)
	category = models.CharField(max_length=500, null=True, blank=True)
	likes = models.IntegerField(null=True, blank=True)
	keyword = models.CharField(max_length=200, null=True, blank=True)
	location = models.CharField(max_length=200, null=True, blank=True) 
	city = models.CharField(max_length=200, null=True, blank=True) 

	class Meta:
		verbose_name = "MINING"
		verbose_name_plural = "MINING"

	def __str__(self):
		return self.name
		

class Page_feed(models.Model):

	feed_id = models.CharField(max_length=100,null=True,blank=True, unique=True)
	page_id = models.CharField(max_length=100, null=True, blank=True)
	created_time = models.DateField(null=True, blank=True)
	message = models.TextField(max_length=1000000, null=True, blank=True)

	class Meta:
		verbose_name = "PAGE FEED"
		verbose_name_plural = "PAGE FEED"

	def __str__(self):
		return self.feed_id
	
	
class Likes(models.Model):

	feed_id = models.CharField(max_length=255, null=True, blank=True)
	page_id = models.CharField(max_length=255, null=True, blank=True)
	user_id = models.CharField(max_length=255, null=True, blank=True)
	user_name = models.CharField(max_length=255, null=True, blank=True)

	class Meta:
		verbose_name = "LIKE"
		verbose_name_plural = "LIKE"

	def __str__(self):
		return self.user_name
	
class User_status(models.Model):
	user_id = models.CharField(max_length=255, null=True, blank=True)
	status_id = models.CharField(max_length=255, null=True, blank=True)
	status = models.TextField(max_length=1000000, null=True, blank=True)
	created_time = models.DateField(null=True, blank=True)
	
	class Meta:
		verbose_name = "User status"
		verbose_name_plural = "User status"

	def __str__(self):
		return self.status
	

class Twitter(models.Model):

	tweet_id = models.CharField(max_length=255, null=True, blank=True)
	user = models.CharField(max_length=255, null=True, blank=True)
	fullname = models.CharField(max_length=255, null=True, blank=True)
	timestamp = models.DateField(null=True, blank=True)
	tweet = models.TextField(max_length=1000000, null=True, blank=True)
	keyword = models.CharField(max_length=255, null=True, blank=True)
	
	class Meta:
		verbose_name = "Twitter"
		verbose_name_plural = "Twitter"

	def __str__(self):
		return self.user

class User_twitter(models.Model):

	tweet_id = models.CharField(max_length=255, null=True, blank=True)
	user = models.CharField(max_length=255, null=True, blank=True)
	fullname = models.CharField(max_length=255, null=True, blank=True)
	timestamp = models.DateField(null=True, blank=True)
	tweet = models.TextField(max_length=1000000, null=True, blank=True)
	keyword = models.CharField(max_length=255, null=True, blank=True)
	hubungan = models.CharField(max_length=255, null=True, blank=True)
	pernyataan = models.CharField(max_length=255, null=True, blank=True)
	
	class Meta:
		verbose_name = "User Twitter"
		verbose_name_plural = "User Twitter"

	def __str__(self):
		return self.user

class Keywords(models.Model):
	nama = models.CharField(max_length=255, null=True, blank=True)
	hubungan = models.CharField(max_length=255, null=True, blank=True)
	pernyataan = models.CharField(max_length=255, null=True, blank=True) #positif / negatif

	class Meta:
		verbose_name = "Keywords"
		verbose_name_plural = "Keywords"

	def __str__(self):
		return self.nama


class User(models.Model):
	nama = models.CharField(max_length=255, null=True, blank=True)
	class Meta:
		verbose_name = "User"
		verbose_name_plural = "Users"

	def __str__(self):
		return self.nama
	
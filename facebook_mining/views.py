from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages

from facebook_mining.models import Mining
import requests

import facebook
import urllib.request
import json


# ACCESS_TOKEN = 'EAACEdEose0cBANY2rmJLzvXpZAj3JkC3s18erkmFUFt8ZB4PnDxmA6ZAznEZCHklylkVOZCyMAZCA5FHMBEdt2sXFZCCyFPzvTvkBszvvCe9k6EplGzcDH8eJeMui9djHXbQP5vg0J9r5bRDEvRjZAyeUPTOQw727miJE6uR0Dl3OYP26KCxz05q5HN15ITMQBvnZAazPDrcDdwZDZD'
ACCESS_TOKEN = 'EAACEdEose0cBAGnXZBD2NoCB8qendKbw8VAiq5tizchbFYE4C2vYqhwxIYH4MYKS5Fh7Ih9Wi2F3LQI3i05wbZADHLpqGBkGGsEL81VhNsIFsZAJLDzeefZBtdscHgJMBqWbfXsmeZBsJeLoLZCecFP1uOBj349MaBIdZB64smIr0hIFEZABeg46ZArykK6ZBZCvLuYv9yaZB5ybkAZDZD'

def landing(request):
	data = {}
	data['title'] = 'Facebook'
	data['facebook'] = True
	get_token(request)
	# messages.add_message(request, messages.INFO, 'Username atau password salah')
	return render(request, 'landing.html', data)

def get_token(request):
	app_id = '1471295099573517'
	app_secret = '230a20747e5a9d818fae6d7c4f833cd9'

	resp = urllib.request.urlopen('https://graph.facebook.com/oauth/access_token?client_id='+app_id+'&client_secret='+app_secret+'&grant_type=client_credentials')

	if resp.getcode() == 200:
		# return resp.read().split(",")[1]
		print(resp.read().split())
	else:
		return None

def get_data(request):
	data = {}
	if request.method == 'POST':
		keywords = request.POST.get('keywords')		

	try:
		g = facebook.GraphAPI(access_token=ACCESS_TOKEN)				
	except facebook.GraphAPI(error) as e:
		raise GraphAPI(response)

	types = 'page'
	limits = '20'
	# keywords = 'pemerintah indonesia'
	
	kiri = 97.0137845
	kanan = 143.408615
	atas = 6.4542803
	bawah = -11.058500
	
	results = []
	page_id = []
	feeds = []
	u = g.request("search", {'q' : keywords, 'type' : types, 'fields':'id,name,likes,location,category', 'limit':limits})

	for p in u['data']:
		if 'location' in p:
			if 'country' in p['location']:
				if p['location']['country'] == 'Indonesia':
					if 'city' in p['location']:
						val = {'id': p['id'], 'name': p['name'], 'category': p['category'], 'likes': p['likes'], 'location': p['location']['country'], 'city': p['location']['city']}
						results.append(val)
						p_id = {'id': p['id']}
						page_id.append(p_id)
				if 'latitude' in p['location']:
					if  p['location']['longitude'] > kiri  and \
						p['location']['longitude'] < kanan and \
						p['location']['latitude']  > bawah and \
						p['location']['latitude'] < atas:
						loc = str(p['location']['latitude'])+', '+str(p['location']['longitude'])
						val = {'id': p['id'], 'name': p['name'], 'category': p['category'], 'likes': p['likes'], 'location': loc, 'city': None}
	# for result in results:
	# 	m = Mining.objects.update_or_create(facebook_id = result['id'], defaults = {'facebook_id' : result['id'], 'name' : result['name'], 'category' : result['category'], 'likes' : result['likes'], 'location' : result['location'], 'city' : result['city']})
	# total_result = str(len(results))
	# messages.add_message(request, messages.SUCCESS, 'Ditemukan '+total_result+' hasil dengan keywords '+keywords)
	# return redirect('landing')

	# cari post per page
	for x in page_id:	
		# created_time, message, id
		feed = g.get_connections(x['id'], connection_name='feed', limit=1)
		for f in feed['data']:
			# feed_obj = {'feed_id': f['id'], 'page_id': x['id'], 'created_time': f['created_time'], 'message': f['message']}
			# feed_obj = {'feed_id': f['id'], 'page_id': x['id'], 'created_time': f['created_time'], 'story': f['story']}
			feeds.append(f['id'])
		
	return HttpResponse(json.dumps(feeds))
# Create your views here.

def hasil(request):
	data = {}
	data['title'] = 'Results'
	data['hasil'] = True
	r = Mining.objects.all()
	
	data['query'] = r

	return render(request, 'hasil.html', data)
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages

from facebook_mining.models import Mining
import facebook
import requests

import json

# ACCESS_TOKEN = 'EAACEdEose0cBAP6VEPiLZCwZCfKHk0EUKvsE7mfnLyQDprWjM3aPMYpUGIhfuHlOEMnVA4AWZAz2vU423ZC8uc8raLZAQ60gwQZAKW2o3RYQWWhZAPHwVPfzGHkbxeXMWZBjnoAuPT7DyleIKOCILnvAuyQ8dPg1DCfUwjsgycqsT1huwdeIJL2S56cmwZAPXP6gcIjPwpWzgcAZDZD'
ACCESS_TOKEN = 'EAACEdEose0cBANY2rmJLzvXpZAj3JkC3s18erkmFUFt8ZB4PnDxmA6ZAznEZCHklylkVOZCyMAZCA5FHMBEdt2sXFZCCyFPzvTvkBszvvCe9k6EplGzcDH8eJeMui9djHXbQP5vg0J9r5bRDEvRjZAyeUPTOQw727miJE6uR0Dl3OYP26KCxz05q5HN15ITMQBvnZAazPDrcDdwZDZD'


def landing(request):
	data = {}
	data['title'] = 'Facebook'
	data['facebook'] = True
	# messages.add_message(request, messages.INFO, 'Username atau password salah')
	return render(request, 'landing.html', data)

def get_token(request):
	client_id = '1471295099573517'
	client_secret = '230a20747e5a9d818fae6d7c4f833cd9'

def get_data(request):
	data = {}
	if request.method == 'POST':
		keywords = request.POST.get('keywords')		
		print(keywords)

	g = facebook.GraphAPI(access_token=ACCESS_TOKEN)
	
	types = 'page'
	# keywords = 'pemerintah indonesia'
	
	kiri = 97.0137845
	kanan = 143.408615
	atas = 6.4542803
	bawah = -11.058500
	
	results = []

	u = g.request("search", {'q' : keywords, 'type' : types, 'fields':'name,likes,location,category'})

	for p in u['data']:
		if 'location' in p:
			if 'country' in p['location']:
				if p['location']['country'] == 'Indonesia':
					if 'city' in p['location']:
						val = {'id': p['id'], 'name': p['name'], 'category': p['category'], 'likes': p['likes'], 'location': p['location']['country'], 'city': p['location']['city']}
						results.append(val)
				if 'latitude' in p['location']:
					if  p['location']['longitude'] > kiri  and \
						p['location']['longitude'] < kanan and \
						p['location']['latitude']  > bawah and \
						p['location']['latitude'] < atas:
						loc = str(p['location']['latitude'])+', '+str(p['location']['longitude'])
						val = {'id': p['id'], 'name': p['name'], 'category': p['category'], 'likes': p['likes'], 'location': loc, 'city': None}
	for result in results:
		m = Mining.objects.update_or_create(facebook_id = result['id'], defaults = {'facebook_id' : result['id'], 'name' : result['name'], 'category' : result['category'], 'likes' : result['likes'], 'location' : result['location'], 'city' : result['city']})

	total_result = str(len(results))
	# return HttpResponse(json.dumps(results))
	messages.add_message(request, messages.SUCCESS, 'Ditemukan '+total_result+' hasil dengan keywords '+keywords)

	return redirect('landing')
# Create your views here.

def hasil(request):
	data = {}
	data['title'] = 'Results'
	data['hasil'] = True
	r = Mining.objects.all()
	
	data['query'] = r

	return render(request, 'hasil.html', data)
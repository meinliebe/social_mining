from django.shortcuts import render
from django.http import HttpResponse
from facebook_mining.models import Mining
import facebook
import requests

import json

ACCESS_TOKEN = 'EAAU6IpXFFQ0BAEsCZA6VNYkI6Ofvod5QBIO6lNW4abPShSar93PvleEmNuROZC5ZAie0f7SXfu0wdUuST14dbK2enuhM4xT4yvPE6ukIDDIbix41ZAflQpKjKqy5qU3kF1x4JyTxOi3wxAJFR2mSZCFRHl4nfpngCBvJTHjOtAPDRRexK6JYqlcCj2EVl645B3n2mZARdWrwZDZD'

def get_token(request):
	client_id = '1471295099573517'
	client_secret = '230a20747e5a9d818fae6d7c4f833cd9'


def get_data(request):
	g = facebook.GraphAPI(access_token=ACCESS_TOKEN)
	
	types = 'page'
	keywords = 'wonogiri'
	
	kiri = 97.0137845
	kanan = 143.408615
	atas = 6.4542803
	bawah = -11.058500
	
	results = []

	u = g.request("search", {'q' : keywords, 'type' : types, 'fields':'name,likes,location,category'})
	print(u)
	for p in u['data']:
		if 'location' in p:
			if 'country' in p['location']:
				if p['location']['country'] == 'Indonesia':
					val = {'name': p['name'], 'category': p['category'], 'likes': p['likes'], 'location': p['location']['country']}
					results.append(val)
			else:
				if 'latitude' in p['location']:
					if  p['location']['longitude'] > kiri  and \
						p['location']['longitude'] < kanan and \
						p['location']['latitude']  > bawah and \
						p['location']['latitude'] < atas:
						val = {'name': p['name'], 'category': p['category'], 'likes': p['likes'], 'location': p['location']}
						results.append(val)
	# for p in u['data']:
	# 	print(p['location'])	
	for result in results:
		m = Mining(name = result['name'], category = result['category'], likes = result['likes'], location = result['location'])
		m.save()
	return HttpResponse(json.dumps(results))
# Create your views here.

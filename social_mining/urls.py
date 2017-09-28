"""social_mining URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin

from facebook_mining import views as fb_views


urlpatterns = [
    url(r'^admin/', admin.site.urls),    
    url(r'get_data/', fb_views.get_data, name='get_data'), # login user  
    url(r'twitter/', fb_views.twitter, name='twitter'), # login user  
    url(r'results/', fb_views.hasil, name='hasil'), # login user    
    url(r'$', fb_views.landing, name='landing'), # login user    
]

from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name="index"),
    url(r'^showUser/(?P<userid>\d+)$', views.showUser, name="showUser"),
    url(r'^addFriend$', views.addFriend, name="addFriend"), 
    url(r'^removeFriend/(?P<friendtoremove>\d+)$', views.removeFriend, name="removeFriend"),   
]

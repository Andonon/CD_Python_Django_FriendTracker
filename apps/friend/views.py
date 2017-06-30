# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect
from .models import User

def index(request):
    user = User.objects.get(id=request.session['id'])
    userfriends = User.objects.filter(friend=request.session['id'])
    otherfriends = User.objects.exclude(friend=request.session['id'])
    context = {
        'user': user,
        'userfriends': userfriends,
        'otherfriends': otherfriends
    }
    return render(request, 'friend/index.html', context)

def showUser(request, userid):
    user = User.objects.get(id=userid)
    context = {
        'user': user
    }
    return render(request, 'friend/showUser.html', context)

def addFriend(request):
    insertAddFriend = User.objects.insertAddFriend(request.POST)
    return redirect('friend:index')
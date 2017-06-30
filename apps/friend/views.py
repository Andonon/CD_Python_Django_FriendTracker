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

def showUser(request):
    return redirect('friend:showUser')

def addFriend(request):
    print "*"*500, request.POST, "*"*500
    insertAddFriend = User.objects.insertAddFriend(request.POST)
    return redirect('friend:index')
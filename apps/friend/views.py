# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import messages
from django.shortcuts import render, redirect
from .models import User

def index(request):
    try:
        request.session['id']
    except KeyError:
        request.session.flush()
        messages.error(request, 'There is user session detected, please login.')
        return redirect('auth:index')
    user = User.objects.get(id=request.session['id'])
    userfriends = User.objects.filter(friend=request.session['id']).exclude(id=request.session['id'])
    otherfriends = User.objects.exclude(friend=request.session['id']).exclude(id=request.session['id'])
    context = {
        'user': user,
        'userfriends': userfriends,
        'otherfriends': otherfriends
    }
    return render(request, 'friend/index.html', context)

def showUser(request, userid):
    try:
        request.session['id']
    except KeyError:
        request.session.flush()
        messages.error(request, 'There is user session detected, please login.')
        return redirect('auth:index')
    user = User.objects.get(id=userid)
    context = {
        'user': user
    }
    return render(request, 'friend/showUser.html', context)

def addFriend(request):
    insertAddFriend = User.objects.insertAddFriend(request.POST)
    return redirect('friend:index')

def removeFriend(request, friendtoremove):
    curruser = request.session['id']
    removeUserFriend = User.objects.removeFriend(friendtoremove, curruser)
    return redirect('friend:index')
    
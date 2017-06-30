# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render, redirect
from .models import User

def index(request):
    user = User.objects.get(id=request.session['id'])
    userfriends = User.objects.all()
    otherfriends = User.objects.all()
    context = {
        'user': user,
        'userfriends': userfriends,
        'otherfriends': otherfriends
    }
    return render(request, 'friend/index.html', context)

def showUser(request):
    return redirect('friend:showUser')

from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime as dt
import socket

def index(request):
    try:
        hostname = socket.gethostname()
    except Exception as e:
        print(e)
        hostname = 'localheost'

    return HttpResponse(f"Page is served by machine: <b>{hostname}</b> @ {dt.now()}")
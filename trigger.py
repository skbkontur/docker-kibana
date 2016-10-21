#!/usr/bin/python
import requests
import os

token = os.getenv("DOCKER_HUB_TOKEN")
version = os.getenv("VERSION")

if token==None:
    print "env DOCKER_HUB_TOKEN not set"
    exit(1)

if version==None:
    print "env VERSION not set"
    exit(1)

url     = "https://registry.hub.docker.com/u/skbkontur/kibana/trigger/%s/" % token
payload = { 'docker_tag' : version }
headers = { 'Content-Type': 'application/json'}

res = requests.post(url, data=payload, headers=headers)
print res

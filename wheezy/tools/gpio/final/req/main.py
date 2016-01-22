#!/usr/bin/env python

import grovepi
import urllib2
import json

ultrasonic_ranger = 4

while True:
  try:
        value = grovepi.ultrasonicRead(ultrasonic_ranger) 
	data = {"Level":value}
	url = 'https://chocolate-furry.herokuapp.com/level	'
	req = urllib2.Request(url,json.dumps(data),{'Content-Type': 'application/json'})
	f = urllib2.urlopen(req)
	for x in f:
		print(x)
	f.close
	print (value)

  except TypeError:
        print ("Error")
  except IOError:
        print ("Error")

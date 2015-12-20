import urllib2
import json

for i in range(0,10):
	val = 20
	data = {"Level":val}
	url = 'https://chocolate-furry.herokuapp.com/level'
	req = urllib2.Request(url, json.dumps(data), {'Content-Type': 'application/json'})
	f = urllib2.urlopen(req)
	for x in f:
    	print(x)
	f.close()

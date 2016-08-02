#!/usr/bin/python
import random
import sys
import urllib
import urllib2
from bs4 import BeautifulSoup
from pymongo import MongoClient
from optparse import OptionParser

def generator(collection, host):
            #initiate a connection to MongoDB and use the "chars" database
            client = MongoClient(host, 27017)
            db = client.chars
            #get all entries from the db and count them
            limit = getattr(db, collection).find()
            limit_count = limit.count()
            #based on the amount of entries in the db, create a random number
            random_id = random.randrange(0,limit_count)
            #query db for an entry with the ID of the random number
            result = getattr(db, collection).find({"Id":"%s" % random_id})
            #return result
            #define search string
            textToSearch = result[0]['Name'] + " " + collection
            #construct query url
            query = urllib.quote(textToSearch)
            url = "https://www.youtube.com/results?search_query=" + query
            #send the query and read response
            response = urllib2.urlopen(url)
            html = response.read()
            soup = BeautifulSoup(html, "html5lib")
            #parse response for links
            vids = soup.findAll(attrs={'class':'yt-uix-tile-link'})
            #return first link/href value of it
            return result[0]['Name'] + "," + 'https://www.youtube.com' + vids[0]['href']

#!/bin/bash
pip install pymongo
pip install uwsgi
pip install bs4

#if /data directory does not exist, create it
if [ ! -d "/data" ]
then
  mkdir /data
fi

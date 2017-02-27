#!/bin/bash
apt-get install -y nginx-full uwsgi uwsgi-plugin-python

#if file exists, remove it
if [ -f "/etc/nginx/sites-available/default" ]
then
  rm /etc/nginx/sites-available/default
fi
#if /data directory does not exist, create it
if [ ! -d "/data" ]
then
  mkdir /data
fi

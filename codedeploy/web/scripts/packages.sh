#!/bin/bash
apt-get install -y nginx-full uwsgi uwsgi-plugin-python
rm /etc/nginx/sites-available/default
mkdir /data

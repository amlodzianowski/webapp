#!/bin/bash
apt-get install -y nginx-full uwsgi uwsgi-plugin-python
rm /etc/nginx/sites-enabled/default
mkdir /data
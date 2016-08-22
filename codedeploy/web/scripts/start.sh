#!/bin/bash
SERVICE=nginx;
ln -s /etc/nginx/sites-available/sites-default /etc/nginx/sites-enabled/sites-default

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
  service nginx restart
else
  service nginx start
fi

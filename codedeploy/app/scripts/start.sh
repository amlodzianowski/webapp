#!/bin/bash
SERVICE=uwsgi;

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
  /usr/bin/killall $SERVICE
  /usr/local/bin/uwsgi -d /var/log/syslog --socket :80 --wsgi-file /data/wsgi.py
else
  /usr/local/bin/uwsgi -d /var/log/syslog --socket :80 --wsgi-file /data/wsgi.py
fi

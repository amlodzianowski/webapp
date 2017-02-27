#!/bin/bash
SERVICE=nginx;

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
  service nginx restart
else
  service nginx start
fi

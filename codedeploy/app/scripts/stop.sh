#!/bin/bash
SERVICE=uwsgi;
STAT=$(/bin/pidof $SERVICE)
if [ "${#STAT}" -gt 0 ]; then
  /usr/bin/killall $SERVICE
fi

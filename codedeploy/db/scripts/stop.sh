#!/bin/bash
SERVICE=mongodb;
STAT=$(/bin/pidof $SERVICE)
if [ "${#STAT}" -gt 0 ]; then
  /usr/bin/service $SERVICE stop
fi

#!/bin/bash
apt-get install -y mongodb

#if file exists, remove it
if [ -f "/etc/mongodb.conf" ]
then
  rm /etc/mongodb.conf
fi
#if /data directory does not exist, create it
if [ ! -d "/data" ]
then
  mkdir /data
fi

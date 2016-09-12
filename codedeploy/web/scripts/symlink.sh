#!/bin/bash

#if symlink does not exist, create it
if [ ! -h "/etc/nginx/sites-enabled/sites-default" ]
then
  ln -s /etc/nginx/sites-available/sites-default /etc/nginx/sites-enabled/sites-default
fi

#Echo server's hostname into a file
/bin/echo "Hostname: $(/bin/hostname -f)" > /data/hostname

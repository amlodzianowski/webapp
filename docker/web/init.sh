#!/bin/bash
/bin/sed -i "s/serverplaceholder/${UPSTREAM_HOST}/" /etc/nginx/sites-available/sites-default
/bin/sed -i "s/portplaceholder/${UPSTREAM_PORT}/" /etc/nginx/sites-available/sites-default
/bin/echo "Hostname: $(/bin/hostname -f)" > /data/hostname;

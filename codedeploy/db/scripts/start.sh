#!/bin/bash
SERVICE=mongodb;
DBNAME=chars
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
  service nginx mongodb
else
  service nginx mongodb
fi

/usr/bin/mongo $DBNAME --eval "db.dropDatabase()"
/usr/bin/mongoimport --db chars --collection southpark < /data/sp-chars.json
/usr/bin/mongoimport --db chars --collection starwars < /data/sw-chars.json

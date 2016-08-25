#!/bin/bash
SERVICE=mongodb;
DBNAME=chars
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
  service $SERVICE restart
else
  service $SERVICE start
fi

/usr/bin/mongo $DBNAME --eval "db.dropDatabase()"
/usr/bin/mongoimport --db chars --collection southpark < /data/sp-charlist.json
/usr/bin/mongoimport --db chars --collection starwars < /data/sw-charlist.json

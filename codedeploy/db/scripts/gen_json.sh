#!/bin/bash
/bin/chmod ugo+x /data/mongo-script.sh
/data/mongo-script.sh /data/sp-charlist.txt > /data/sp-charlist.json
/data/mongo-script.sh /data/sw-charlist.txt > /data/sw-charlist.json

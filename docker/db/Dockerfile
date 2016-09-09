FROM ubuntu:14.04
MAINTAINER Adrian Mlodzianowski

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y mongodb

# Create directory for all files
RUN mkdir /data

# Copies content of the data directory to /data
COPY data/* /data/

# Copies content of the mongo directory to /etc
COPY mongo/* /etc/

# Set exec perms on mongo script
/bin/chmod ugo+x /data/mongo-script.sh

# Generate JSON out of txt files
/data/mongo-script.sh /data/sp-charlist.txt > /data/sp-charlist.json
/data/mongo-script.sh /data/sw-charlist.txt > /data/sw-charlist.json

# Populate database with pre-created json files
RUN /usr/bin/mongoimport --db chars --collection southpark < /data/sp-charlist.json
RUN /usr/bin/mongoimport --db chars --collection starwars < /data/sw-charlist.json

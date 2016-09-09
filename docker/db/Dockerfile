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

# Populate database with pre-created json files
RUN /usr/bin/mongoimport --db chars --collection southpark < /data/sp-charlist.json
RUN /usr/bin/mongoimport --db chars --collection starwars < /data/sw-charlist.json

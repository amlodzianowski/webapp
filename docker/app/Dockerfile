FROM ubuntu:14.04
MAINTAINER Adrian Mlodzianowski

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y python-pip python2.7-dev
RUN pip install pymongo bs4 uwsgi

# Create directory for all files
RUN mkdir /data

# Copies content of the www directory to /data
COPY python/* /data/

EXPOSE 8000

FROM ubuntu:14.04
MAINTAINER Adrian Mlodzianowski

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y python-pip
RUN pip install pymongo uwsgi bs4

# Create directory for all files
RUN mkdir /data

# Copies content of the www directory to /data
COPY python/* /data/

EXPOSE 8000

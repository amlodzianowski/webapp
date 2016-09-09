FROM ubuntu:14.04
MAINTAINER Adrian Mlodzianowski

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y nginx-full uwsgi uwsgi-plugin-python

# Remove default sites-available
RUN rm /etc/nginx/sites-available/default

# Create directory for all files
RUN mkdir /data

# Copies content of the www directory to /data
COPY www/* /data/

# Copies content of the nginx directory to /etc/nginx/sites-available
COPY nginx/* /etc/nginx/sites-available/

# Creates a symlink to sites-default
RUN ln -s /etc/nginx/sites-available/sites-default /etc/nginx/sites-enabled/sites-default

#  Restarts nginx
RUN service nginx restart

EXPOSE 80

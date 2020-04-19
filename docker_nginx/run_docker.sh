#!/bin/bash


#MOUNTPOINT (for launching)
MOUNTPOINT="$1"
# Firstly verify mounting point
if [ -z "$1" ]; then
    echo "No mountpoint supplied, installation failed."
    exit 1
fi

if [ -f "/home/unai/Cluedo_online/${MOUNTPOINT}/html/index.html" ]; then
    echo "All good to go."
else
    echo "the file you specified does not exist."
    exit 1
fi


docker build . -t docker-nginx
docker run --name hello-world-nginx -d -p 9080:9080 -v /home/unai/Cluedo_online/${MOUNTPOINT}/html:/usr/share/nginx/html docker-nginx

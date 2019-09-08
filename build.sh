#!/bin/bash

#
# See example.env file
# This Script remove and build new image
#

# Check there is exist
if [ "$(docker ps -a | grep data-science-py)" ]; then
    docker rm -f data-science-py
fi
if [ "$(docker images | grep data-science-py)" ]; then
    docker rmi sebaxtian/data-science-py:1.0.0
fi

docker build $(for i in `cat .env | grep -v '#'`; do out+="--build-arg $i " ; done; echo $out;out="") -t sebaxtian/data-science-py:1.0.0 .

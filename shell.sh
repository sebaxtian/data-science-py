#!/bin/bash

#
# This Script run a shell into container
#

docker start data-science-py
docker exec -it data-science-py bash

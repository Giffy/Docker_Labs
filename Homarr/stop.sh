#!/bin/bash 

# Stops when docker uses docker-compose.yml
if which docker-compose > /dev/null 2>&1; then
    docker-compose stop
else
    docker compose stop
fi

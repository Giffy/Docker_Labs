#!/bin/bash 

if which docker-compose > /dev/null 2>&1; then
    docker-compose up -d
else
    docker compose up -d
fi
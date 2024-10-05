#!/bin/bash 

# Stops all containers in use
docker stop $(docker ps -q)
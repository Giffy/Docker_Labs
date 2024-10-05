#!/bin/bash 

CheckDocker() {
    # Verifica si docker está instalado
    if ! which docker &> /dev/null; then
        echo "Error: Docker no está instalado o no existe"
        exit 1
    fi
    }

StartDockerCompose() {
    # Stops when docker uses docker-compose.yml
    if which docker-compose > /dev/null 2>&1; then
        docker-compose up -d
    else
        docker compose up -d
    fi
    }

main() {
	CheckDocker
	StartDockerCompose
}

main "$@"
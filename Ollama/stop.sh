#!/bin/bash 

CheckDocker() {
    # Verifica si docker está instalado
    if ! which docker &> /dev/null; then
        echo "Error: Docker no está instalado, no existe o no requiere permisos sudo"
        exit 1
    fi
    }

StopDockerCompose() {
    # Stops when docker uses docker-compose.yml
    if which docker-compose > /dev/null 2>&1; then
        docker-compose stop
    else
        docker compose stop
    fi
    }

StopDockerRun() {
    # Stops when ollama is launched with docker run
    containers=$(docker ps --filter ancestor=ollama/ollama --format "{{.Names}}")
    if [ -n "$containers" ]; then
        echo $containers | xargs docker stop
    fi

    containers=$(docker ps --filter ancestor=ghcr.io/open-webui/open-webui:main --format "{{.Names}}")
    if [ -n "$containers" ]; then
        echo $containers | xargs docker stop
    fi
    }

main() {
	CheckDocker
	StopDockerCompose
	StopDockerRun
}

main "$@"
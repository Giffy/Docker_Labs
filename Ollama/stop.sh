# Stops when docker uses docker-compose.yml
docker-compose stop

# Stops when ollama is launched with docker run
containers=$(docker ps --filter ancestor=ollama/ollama --format "{{.Names}}")
if [ -n "$containers" ]; then
    echo $containers | xargs docker stop
fi

containers=$(docker ps --filter ancestor=ghcr.io/open-webui/open-webui:main --format "{{.Names}}")
if [ -n "$containers" ]; then
    echo $containers | xargs docker stop
fi


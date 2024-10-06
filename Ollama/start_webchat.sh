docker run -d -h open-webui \
           --cpus="1" --memory="300M" \
           --volume open-webui:/app/backend/data  \
           --add-host=host.docker.internal:host-gateway \
           -p 3010:8080 \
           --restart unless-stopped \
           ghcr.io/open-webui/open-webui:main

docker run -d -h ollama \
           --cpus="6" --memory="4g" \
           --volume /usr/share/ollama/.ollama:/root/.ollama  \
           --add-host=host.docker.internal:host-gateway \
           -p 11434:11434 \
           --restart unless-stopped \
           ollama/ollama:latest


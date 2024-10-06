docker run -d -h ollama \
           --cpus="6" --memory="4g" \
           --volume /usr/share/ollama/.ollama:/root/.ollama  \
           --add-host=host.docker.internal:host-gateway \
           -p 11434:11434 \
           --restart unless-stopped \
           ollama/ollama:latest

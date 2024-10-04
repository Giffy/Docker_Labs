docker run -d -p 3010:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --restart always ghcr.io/open-webui/open-webui:main
docker run -d -v /usr/share/ollama/.ollama:/root/.ollama -p 11434:11434 --restart always  ollama/ollama:latest

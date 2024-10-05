# Docker_Labs
A collection of Scripts for Running Docker Containers and Building Laboratory Architectures

This repository contains a collection of scripts designed to facilitate the deployment and management of Docker containers. These scripts can be used to build a laboratory architecture, providing a practical environment for training and understanding software deployment processes.

# Requirements
Requires docker installed:

- Windows: requires WSL 2 and a linux distribution installed recommended Ubuntu 22.04, then follow linux requirements.

- Linux: Installed docker engine, in this repository you can find the [official installation instructions](https://docs.docker.com/engine/install/ubuntu/)

I included the steps in a bash script (following the official installation). 

- Ubuntu:  the script is named ubuntu_docker_installer.sh

# Content
This is the list of dockerized applications or achitecture and contained applications.

|Folder name| Content| Image size |
|---|---|---|
| [BasicCentOS8](https://github.com/Giffy/Docker_Labs/tree/main/BasicCentOS8) | Base container within CentOS 8 + repositories ans updated.| 534Mb |
| [BasicUbuntu20.04](https://github.com/Giffy/Docker_Labs/tree/main/BasicUbuntu20.04) | Base container within Ubuntu20.04 + repositories ans updated.| 220Mb |
| [BasicUbuntu22.04](https://github.com/Giffy/Docker_Labs/tree/main/BasicUbuntu22.04) | Base container within Ubuntu22.04 + repositories ans updated.| 215Mb |
| [Homarr](https://github.com/Giffy/Docker_Labs/tree/main/Homarr) | Simplified dashboard webserver used as container bookmark to simplify access to them.| 632Mb |
| [Ollama](https://github.com/Giffy/Docker_Labs/tree/main/Ollama)  | Ollama + open Web UI provides a web-based interface for administering Ollama, making it easy to manage and use AI models.| 4.14Gb + 300Mb |
| [Portainer](https://github.com/Giffy/Docker_Labs/tree/main/Portainer) | Portainer is a web-based interface for managing and monitoring Docker containers, allowing users to create, start, stop, and inspect running containers.| 303Mb + 212Mb |
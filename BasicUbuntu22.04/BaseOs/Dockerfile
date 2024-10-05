FROM ubuntu:22.04

# Update the package list and install prerequisites
RUN apt update -y && apt install -y wget unzip tar curl vim
RUN ln -snf /usr/share/zoneinfo/UTC /etc/localtime && echo UTC > /etc/timezone
RUN apt install -y systemctl
RUN apt clean && rm -Rf /var/lib/apt/lists/


# Setup required folders
RUN mkdir -p /etc /opt/etc /usr/local/etc /data
WORKDIR /data
#ENTRYPOINT [ "/bin/bash" ]



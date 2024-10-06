FROM centos:8

# Setup Centos Repo
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

# Update and install packages
RUN yum update -y 
RUN yum install yum-utils -y

# Clean files
RUN yum clean all

# Entrypoint directory
WORKDIR /data

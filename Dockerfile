FROM centos:8

# Labeks
LABEL maintainer="github.gkarthiks@gmail.com"

# Update certs
RUN yum -y update && yum -y install ca-certificates make
RUN update-ca-trust

#Install Azure CLI & add devops extension
RUN yum install -y python3-devel gcc
RUN pip3 install azure-cli && az extension add --name azure-devops

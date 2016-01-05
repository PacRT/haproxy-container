# haproxy

# 1. Introduction
Assumes you have a local system with docker running on it. Check wiki for more details.

The Container image is based on Ubuntu 14.04. The default haproxy version from this version of Ubuntu distribution (apt-get cache) is based 1.4.24.

To run the haproxy in a container:

  Download the Dockerfile

  Download the haproxy.cfg

Create a directory in your local system
Run the following commands after downloading Dockerfile for haproxy.

To build the haproxy docker image:
  docker build -t haproxy .

To run the haproxy docker image:
  docker run -p 1883:1883 -p 1936:1936 -d haproxy

To check status of the container:
  docker ps -a  
  
To check the logs:
  docker logs <container id>


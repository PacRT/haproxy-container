# 1. Introduction
Assumes you have a local system with docker running on it. Check wiki for more details.

The Container image is based on Ubuntu 14.04. The default haproxy version from this version of Ubuntu distribution (apt-get cache) is based 1.4.24.

# 2. To run the haproxy in a container

Create a directory in your local system. 
- Eg: _mkdir mqtthaproxy_

Download the **Dockerfile** and **haproxy.cfg** to this new directory

Run the following commands after downloading.

- To build the haproxy docker image: **docker build -t haproxy .**
- To run the haproxy docker image: **docker run -p 1883:1883 -p 1936:1936 -d haproxy**
- To check status of the container: **docker ps -a**  
- To check the logs: **docker logs <container id>**

To check the status and stats of the haproxy, from a browser: **http://_\<ip-address of the host running container\>_:1936/**


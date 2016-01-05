# Get and install haproxy
FROM ubuntu:14.04

RUN apt-get update && apt-get install -y haproxy

# Docker Maintainer
MAINTAINER sandeep

# Add pacRT specific file
ADD haproxy.cfg /etc/haproxy/haproxy.cfg


# use default mqtt broker port and stats port
EXPOSE 1883
EXPOSE 1936

CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]

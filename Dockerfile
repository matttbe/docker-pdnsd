# PDNSD
# You can add options when launching it or mount /etc/pdnsd.conf
#
# VERSION  0.0.1

FROM       ubuntu:14.04
MAINTAINER Matthieu Baerts "matttbe@gmail.com"

# Install pdnsd
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y pdnsd

# DNS port 53 (tcp and udp)
EXPOSE 53 53/udp

ENTRYPOINT ["/usr/sbin/pdnsd"]

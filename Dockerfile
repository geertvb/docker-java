#
# Ubuntu Dockerfile
#
# https://github.com/GeertVB/docker-java
#

FROM 192.168.0.29:5000/geertvb/docker-ubuntu

RUN \
  apt-get update && \
  apt-get -y upgrade

RUN \
  apt-get install -y software-properties-common

RUN \
  echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer
  
CMD /bin/bash

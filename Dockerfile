FROM ubuntu:latest
MAINTAINER John Fink <john.fink@gmail.com>
ADD ./waterloo-sources.list /etc/apt/sources.list
RUN apt-get update # Tue Jan  7 15:32:10 EST 2014
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget git sudo 
#for cloudfuse
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential libcurl4-openssl-dev libxml2-dev libssl-dev libfuse-dev
ADD ./.cloudfuse /.cloudfuse
ADD ./cloudfuse-make.sh /cloudfuse-make.sh
RUN mkdir /cloudfuse
RUN git clone https://github.com/redbo/cloudfuse /cloudfuse
RUN /bin/bash /cloudfuse-make.sh
ADD ./installswifttools.sh /installswifttools.sh
RUN /bin/bash /installswifttools.sh
ADD ./openrc.sh /openrc.sh


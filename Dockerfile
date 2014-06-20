FROM ubuntu:latest
MAINTAINER John Fink <john.fink@gmail.com>
ADD ./waterloo-sources.list /etc/apt/sources.list
RUN apt-get update # Tue Jan  7 15:32:10 EST 2014
RUN apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget git sudo
ADD ./installswifttools.sh /installswifttools.sh

FROM ubuntu
MAINTAINER Iiro Uusitalo <iiro@uusitalo.email>

RUN apt-get -y update
RUN apt-get -y install autoconf libreadline6 libpcre3 libpcre3-dev g++ wget libgmp-dev libgmpada5-dev libreadline-dev make
WORKDIR /tmp
RUN wget http://www.cs.uni.edu/~okane/source/MUMPS-MDH/mumps-17.12.src.tar.gz
RUN tar -zxvf mumps-17.12.src.tar.gz
WORKDIR /tmp/mumpsc
RUN ./BuildMumpsWithNativeClientServer.script

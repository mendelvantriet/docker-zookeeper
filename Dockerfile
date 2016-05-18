FROM frolvlad/alpine-openjdk7
MAINTAINER mendelvantriet

RUN apk add --update bash

ADD http://apache.cs.uu.nl/zookeeper/current/zookeeper-3.4.8.tar.gz .
RUN tar -xz -C /usr/local/ < zookeeper-3.4.8.tar.gz
RUN ln -s zookeeper-3.4.8 /usr/local/zookeeper
ADD zoo.cfg /usr/local/zookeeper/conf/

WORKDIR /usr/local/zookeeper
CMD ["bin/zkServer.sh" , "start"]

EXPOSE 2181 2888 3888


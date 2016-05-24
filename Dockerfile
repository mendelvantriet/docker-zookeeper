FROM frolvlad/alpine-openjdk7
MAINTAINER mendelvantriet

ADD http://apache.cs.uu.nl/zookeeper/current/zookeeper-3.4.8.tar.gz zoo.cfg ./
RUN apk add --update bash && \
    tar -xz -C /usr/local/ < zookeeper-3.4.8.tar.gz && \
    ln -s zookeeper-3.4.8 /usr/local/zookeeper && \
    mv zoo.cfg /usr/local/zookeeper/conf/

WORKDIR /usr/local/zookeeper
CMD ["bin/zkServer.sh" , "start-foreground"]

EXPOSE 2181 2888 3888


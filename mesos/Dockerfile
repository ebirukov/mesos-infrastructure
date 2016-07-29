FROM ubuntu:14.04

ENV VER 1.0.0
RUN apt-get update
RUN apt-get -y install wget curl nano tar git build-essential clang-3.5 git maven autoconf libtool cmake
RUN apt-get -y install openjdk-7-jdk python-dev libcurl4-nss-dev libsasl2-dev libapr1-dev libsvn-dev libevent-dev libev-dev
RUN wget http://www.apache.org/dist/mesos/${VER}/mesos-${VER}.tar.gz
RUN tar -zxf mesos-*.tar.gz
RUN cd mesos-* && mkdir build && cd build && ../configure && make -j4 && make install
WORKDIR mesos-${VER}
RUN cd 3rdparty
RUN tar –xzf zookeeper-*.tar.gz
RUN cd zookeeper-* && cp conf/zoo_sample.cfg conf/zoo.cfg
#RUN echo "server.1=`curl -s http://169.254.169.254/latest/meta-data/public-hostname`:2888:3888" >> conf/zoo.cfg
RUN curl -fsSL https://get.docker.com/ | sh
ENV MESOS_NATIVE_JAVA_LIBRARY=/usr/local/lib/libmesos.so

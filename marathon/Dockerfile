FROM ebirukov/mesos

ENV MARATHON_VER 1.1.1
RUN apt-get update
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN update-java-alternatives -s /usr/lib/jvm/java-1.8.*-openjdk-amd64
RUN curl -O http://downloads.mesosphere.com/marathon/v${MARATHON_VER}/marathon-${MARATHON_VER}.tgz && tar xzf marathon-*.tgz
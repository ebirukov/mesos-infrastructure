docker run -d --name mesos-agent --net=host ebirukov/mesos-build ./build/src/slave/mesos-agent --master=0.0.0.0:5050 --work_dir=/tmp

 docker run -d --name mesos --net=host ebirukov/mesos-build ./build/src/master/mesos-master --ip=0.0.0.0 --work_dir=/tmp

docker run -d --name mesos -e MESOS_VERSION=false --net=host ebirukov/mesos:1.0.0 /mesos-1.0.0/build/bin/mesos-master.sh --ip=0.0.0.0 --work_dir=/tmp

 export MESOS_NATIVE_JAVA_LIBRARY=/usr/local/lib/libmesos.so

 docker run -d --name mesos --net=host -ti -e MESOS_VERSION=false ebirukov/mesos:1.0.0 /mesos-1.0.0/build/bin/mesos-master.sh --work_dir=/tmp --zk=zk://0.0.0.0:2181/mesos

docker run -d --name mesos-slave --privileged --net=host -ti -e MESOS_VERSION=false ebirukov/mesos:1.0.0 /mesos-1.0.0/build/bin/mesos-slave.sh --work_dir=/tmp --master=zk://ec2-54-197-120-225.compute-1.amazonaws.com:2181/mesos

docker run -d --net=host -ti -e DOCKER_API_VERSION=1.23 -e MESOS_VERSION=false -e "MESOS_CONTAINERIZERS=docker,mesos" -v /var/run/docker.sock:/var/run/docker.sock ebirukov/mesos:1.0.0 /mesos-1.0.0/build/bin/mesos-slave.sh --work_dir=/tmp --master=zk://ec2-54-197-120-225.compute-1.amazonaws.com:2181/mesos


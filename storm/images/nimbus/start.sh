#!/bin/sh

yum -y install python
source /conf.sh
/configure.sh ${ZOOKEEPER_SERVICE_HOST} ${HOSTNAME}


exec bin/storm nimbus

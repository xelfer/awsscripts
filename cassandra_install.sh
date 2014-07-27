#!/bin/bash
export CASSANDRA_VERSION=2.0.9
/usr/bin/apt-get update && /usr/bin/apt-get install openjdk-7-jdk -y
/usr/bin/wget http://mirror.mel.bkb.net.au/pub/apache/cassandra/2.0.9/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz -O /root/cassandra.tar.gz 
mkdir /root/cassandra
tar zxf /root/cassandra.tar.gz -C /root/cassandra --strip-components=1
/usr/bin/wget https://s3-ap-southeast-2.amazonaws.com/cas123/cassandra.yaml -O /root/cassandra/conf/cassandra.yaml
rm -rf /root/cassandra.tar.gz
echo "export CASSANDRA_HOME=~/cassandra" >> /root/.bashrc
echo "export PATH=\$PATH:\$CASSANDRA_HOME/bin" >> /root/.bashrc
/root/cassandra/bin/cassandra

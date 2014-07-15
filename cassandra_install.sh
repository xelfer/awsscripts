cd
CASSANDRA_VERSION=2.0.9
apt-get update && apt-get install openjdk-7-jdk -y
wget wget http://mirror.mel.bkb.net.au/pub/apache/cassandra/2.0.9/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz
tar zxvf apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz
mv apache-cassandra-$CASSANDRA_VERSION cassandra
export CASSANDRA_HOME=~/cassandra
export PATH=$PATH:$CASSANDRA_HOME/bin
sh ~/cassandra/bin/cassandra

echo "Install complete. Run ~/cassandra/bin/cassandra-cli to connect."

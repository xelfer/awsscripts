cd
apt-get install openjdk-7-jdk
wget wget http://mirror.mel.bkb.net.au/pub/apache/cassandra/2.0.9/apache-cassandra-2.0.9-bin.tar.gz
tar zxvf apache-cassandra*
mv apache-cassandra* cassandra
export CASSANDRA_HOME=~/cassandra
export PATH=$PATH:$CASSANDRA_HOME/bin
sh ~/cassandra/bin/cassandra

echo "Install complete. Run ~/cassandra/bin/cassandra-cli to connect."

pushd /c/BenLocal/ksql/kafka_2.12-2.2.0
nohup bin/zookeeper-server-start.sh config/zookeeper.properties > zookeeper.txt 2>&1 &
nohup bin/kafka-server-start.sh config/server.properties > kafka.txt 2>&1 &
# popd

#! /bin/bash

cd /kafka/bin
chmod +x *.sh
touch /tmp/docker-init

echo "Starting zookeeper" >> /tmp/docker-init

exec ./zookeeper-server-start.sh ../config/zookeeper.properties &
status = $?
if [$status -ne 0]; then
    echo "Failed to start zookeeper: $status" >> /tmp/docker-init
    exit $status
fi

echo "Started zookeeper" >> /tmp/docker-init
ps -ef >> /tmp/docker-init
echo "= = = = = = = = = =" >> /tmp/docker-init


echo "Starting kafka" >> /tmp/docker-init
exec ./kafka-server-start.sh ../config/server.properties &
status = $?
if [$status -ne 0]; then
    echo "Failed to start kafka: $status" >> /tmp/docker-init
    exit $status
fi

echo "Started kafka" >> /tmp/docker-init
ps -ef >> /tmp/docker-init

exec /bin/bash
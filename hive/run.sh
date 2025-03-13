#!/usr/bin/bash

HIVE_HOME=/opt/hive

if [ ! -f "$HIVE_HOME"/initialized ]; then
  echo "Configuring Hive X..."
  hdfs dfs -mkdir -p  /user/hive/warehouse
#  schematool -dbType postgres -initSchema
#  touch "$HIVE_HOME"/initialized
fi

# echo "Starting Hive Metastore..."
# hive --service metastore &

# echo "Starting Hive server2..."
# hiveserver2 --hiveconf hive.root.logger=DEBUG,console &

# Trzymamy kontener w działaniu
echo "Waiting for services to run..."
while true; do
  sleep 1000
done
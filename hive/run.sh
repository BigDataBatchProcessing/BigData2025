#!/usr/bin/bash

if [ ! -f "$HIVE_HOME"/initialized ]; then
  echo "Configuring Hive..."
  hdfs dfs -mkdir -p  /user/hive/warehouse
#  schematool -dbType postgres -initSchema
#  touch "$HIVE_HOME"/initialized
fi

echo "Starting Hive Metastore..."
hive --service metastore &

echo "Starting Hive server2..."
hiveserver2 --hiveconf hive.root.logger=DEBUG,console &
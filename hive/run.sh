#!/usr/bin/bash

if [ ! -f "$NAMEDIR"/initialized ]; then
  echo "Configuring Hive..."
  hdfs dfs -mkdir -p  /user/hive/warehouse
  schematool -dbType postgres -initSchema
  touch "$NAMEDIR"/initialized
fi

echo "Starting Hive Metastore..."
hive --service metastore &

echo "Starting Hive server2..."
hiveserver2 &
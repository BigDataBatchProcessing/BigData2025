@echo off
cd %~dp0

docker build -t hadoop-spark-base ./base
docker build -t hadoop-spark-master ./master
docker build -t hadoop-spark-worker ./worker
docker build -t hadoop-spark-history ./history
docker build -t hadoop-spark-hive ./hive
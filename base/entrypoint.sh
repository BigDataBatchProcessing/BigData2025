#!/usr/bin/bash

chown -R $USERNAME:$GROUPNAME /opt/hadoop/etc/hadoop
chown -R $USERNAME:$GROUPNAME /opt/spark/conf

exec "$@"
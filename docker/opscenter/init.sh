#!/usr/bin/env bash

# Accept listen_address
# IP=`hostname --ip-address` # old way
IP=${LISTEN_ADDRESS:-`hostname --ip-address`}

sed -i -e "s/^interface.*/interface = $IP/" /etc/opscenter/opscenterd.conf

echo Starting OpsCenter on $IP...

sudo service opscenterd start
tail -f /var/log/opscenter/opscenterd.log

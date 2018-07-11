#!/bin/bash
curl -O https://raw.githubusercontent.com/Bluelich/centos/master/centos.sh;
chmod 777 centos.sh;
nohup ./centos.sh &

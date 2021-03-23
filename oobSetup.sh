#!/bin/bash

if [ "x$1" == "x" ] || [ "x$2" == "x" ]; then
  echo "Usage: $0 {thingsboard_host} {thingsboard_token}"
  exit 1
fi

if ! id | grep -q root; then
        echo "must be run as root"
        exit
fi

/neousys/eth0dhcp.sh
/opt/source/docker/initIgtNodered.sh
/opt/source/tbgateway/initTbGateway.sh $1 $2
systemctl enable thingsboard-gateway.service
#systemctl start thingsboard-gateway.service
#sleep 10
#systemctl restart thingsboard-gateway.service
reboot

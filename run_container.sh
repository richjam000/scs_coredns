#!/bin/bash
IMAGE="gitlab.scsuk.net:5005/scsuk/scs_coredns:1.0"

docker run -d --name=scs_coredns --network=host --hostname=coredns --restart=always  \
-p 53:53/udp \
-p 53:53/tcp \
"$IMAGE" -conf /mnt/coredns/Corefile

sudo firewall-cmd --zone=public --add-service=dns --permanent
sudo firewall-cmd --reload
sudo firewall-cmd --list-all

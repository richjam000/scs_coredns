docker volume create scs_coredns_conf
docker run -d --name=scs_coredns --network=jamnet --hostname=coredns --restart=always  \
-p 53:53/udp \
--volume scs_coredns_conf:/mnt/coredns \
localhost:5000/scsuk.net/scs_coredns:1.0 -conf /mnt/coredns/Corefile

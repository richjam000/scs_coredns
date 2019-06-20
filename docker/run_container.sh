docker volume create scs_coredns_conf
docker run -d --name=scs_coredns --network=jamnet --hostname=coredns \
--volume scs_coredns_conf:/mnt/coredns
localhost:5000/scsuk.net/scs_coredns:1.0

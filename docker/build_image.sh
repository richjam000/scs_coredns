# Example docker build command
docker build -t localhost:5000/scsuk.net/scs_coredns:1.0 -f docker/Dockerfile https://gitlab.scsuk.net/rich/scs_coredns.git#master
docker push localhost:5000/scsuk.net/scs_coredns:1.0

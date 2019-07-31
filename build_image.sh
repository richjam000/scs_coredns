#!/bin/bash
IMAGE="gitlab.scsuk.net:5005/scsuk/scs_coredns:1.0"
# Example docker build command
docker build -t $IMAGE .
docker push "$IMAGE"

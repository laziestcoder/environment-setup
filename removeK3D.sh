#!bin/bash

sudo rm /usr/local/bin/k3d

k3d cluster delete mycluster

docker system prune -a --volumes

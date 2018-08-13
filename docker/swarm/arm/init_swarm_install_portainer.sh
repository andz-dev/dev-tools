#!/bin/bash

# Initialize a new Docker Swarm
docker swarm init;

# Store swarm manager information to file
docker swarm join-token worker >> swarm_worker.token;
echo "You can access the worker token on the manager from $PWD/swarm_worker.token";

# After init create a new portainer volume (based upon offical portainer documentation => https://portainer.io/install.html)
docker volume create portainer_data

# Create portainer service on the manager
docker service create \
--name portainer \
--publish 9000:9000 \
--replicas=1 \
--constraint 'node.role == manager' \
--mount type=bind,src=//var/run/docker.sock,dst=/var/run/docker.sock \
--mount type=volume,src=portainer_data,dst=/data \
portainer/portainer \
-H unix:///var/run/docker.sock;
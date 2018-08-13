#!/bin/bash

# Get all packages and install the latest updates
apt update && apt upgrade -y;

# Install python and the package manager
apt install -y python python-pip;

# Install Docker Compose
pip install docker-compose;

# Display messages
docker-compose --version;
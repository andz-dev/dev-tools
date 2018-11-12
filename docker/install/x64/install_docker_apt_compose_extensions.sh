#!/bin/bash

# Get all packages and install the latest updates
apt update && apt upgrade -y;

# Install necessary packages
apt install -y docker.io;

# Docker post installation
groupadd docker;

# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose;

# Apply executable permissions to the binary
chmod +x /usr/local/bin/docker-compose;

# Install command completion
curl -L https://raw.githubusercontent.com/docker/compose/1.23.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-com$

# Display messages
docker --version;
docker-compose --version;
echo "Docker and Docker Compose is now installed. If you don't want to enter sudo docker every time you can add your current user via usermod -aG docker $USER and re-login to overtake the changes.";
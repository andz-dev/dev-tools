#!/bin/bash

# Get all packages and install the latest updates
apt update && apt upgrade -y;

# Install necessary packages
apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common;

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -;

# Add stable repository
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable";

# Install Docker
apt update && apt install -y docker-ce;

# Docker post installation
groupadd docker;

# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.22/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose;

# Apply executable permissions to the binary
chmod +x /usr/local/bin/docker-compose;

# Install command completion
curl -L https://raw.githubusercontent.com/docker/compose/1.22/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-com$

# Display messages
docker --version;
docker-compose --version;
echo "Docker and Docker Compose is now installed. If don't want to enter sudo docker every time you can add your current user via usermod -aG docker $USER and re-login to overtake the changes.";
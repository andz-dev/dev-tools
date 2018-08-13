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
usermod -aG docker $USER;

# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose;

# Apply executable permissions to the binary
chmod +x /usr/local/bin/docker-compose;

# Install command completion
curl -L https://raw.githubusercontent.com/docker/compose/1.21.2/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-com$

# Display messages
docker --version;
docker-compose --version;
echo "The current user $USER is added to use docker as non-root. Please login again for usage";
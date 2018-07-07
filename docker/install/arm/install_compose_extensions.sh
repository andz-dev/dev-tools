#!/bin/bash

# Get all packages and install the latest updates
apt update && apt upgrade -y;

# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose;

# Apply executable permissions to the binary
chmod +x /usr/local/bin/docker-compose;

# Install command completion
curl -L https://raw.githubusercontent.com/docker/compose/1.21.2/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-com$

# Display messages
docker-compose --version;
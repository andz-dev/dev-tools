[toc]

# Docker installation tools

Installing Docker manually is annoying if you need it on more than one machine. For this I created this script that helps you to install [Docker CE](https://docs.docker.com/install/linux/docker-ce/ubuntu/), [Docker Compose](https://docs.docker.com/compose/install/) and the optional post installation steps automatically.

Tested with [Ubuntu Server 16.04.4 LTS](http://releases.ubuntu.com/16.04/).

## Install Docker and Compose

Clone this repository or download or copy-paste the script _install_docker_compose_extensions.sh_ to your local system.

``````sh
# Git clone
$ git clone https://github.com/andz-dev/dev-tools.git

# Download via wget and run the script
wget -O install_docker_compose_extensions.sh https://github.com/andz-dev/dev-tools/blob/master/docker/install/x64/install_docker_compose_extensions.sh?raw=true; chmod +x install_docker_compose_extensions.sh; sudo sh install_docker_compose_extensions.sh
``````

If you cloned the repository folloe the next steps. Go to the directory where the file is and make it executable.

``````sh
$ chmod +x install_docker_compose_extensions.sh
``````

Run the script with _sudo_.

``````sh
$ sudo sh install_docker_compose_extensions.sh
``````

Wait till the tools were installed and the configuration was set. Login again so you can use Docker without _sudo_.
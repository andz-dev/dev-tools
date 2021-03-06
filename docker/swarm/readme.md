# Docker swarm installation tools
If you want to setup a new Docker Swarm cluster you can use these scripts for your target platform to init a new swarm easily. To manage the swarm I use [Portainer](https://portainer.io). So after initialization the commands setup and run a new portainer instance. You can access to it via webbrowser and port 9000.
Feel free to change the script for your needs.

## Download and run
Clone this repository or download the files directly to your local system.

### Git clone
```sh
$ git clone https://github.com/andz-dev/dev-tools.git

# for x64 OS
$ cd dev-tools/docker/swarm/x64
$ chmod +x init_swarm_install_portainer.sh
$ sudo sh init_swarm_install_portainer.sh

# for ARM
$ cd dev-tools/docker/swarm/arm
$ chmod +x init_swarm_install_portainer.sh
$ sudo sh init_swarm_install_portainer.sh
```

### Download via wget and run the script
```sh
# For x64 OS
wget -O init_swarm_install_portainer.sh https://github.com/andz-dev/dev-tools/blob/master/docker/swarm/x64/init_swarm_install_portainer.sh?raw=true; chmod +x init_swarm_install_portainer.sh; sudo sh init_swarm_install_portainer.sh

# For ARM OS
wget -O init_swarm_install_portainer.sh https://github.com/andz-dev/dev-tools/blob/master/docker/swarm/arm/init_swarm_install_portainer.sh?raw=true; chmod +x init_swarm_install_portainer.sh; sudo sh init_swarm_install_portainer.sh
```
# Build containers for Raspberry Pi
Although there are many containers and projects available on [Docker Hub](https://hub.docker.com) not all of these images provides support for ARM architectures. So it is necessary to build our own containers.
**Before we start the following requirements are needed:**
- Raspberry Pi 3
- [Hypriot OS](https://blog.hypriot.com/)
- or [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) with [Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository) installed
- a free Docker Hub account to upload the image
For more information on how to install and use Hypriot OS (also for an Docker Swarm) read my documentation on my [Github projects](https://github.com/andz-dev/projects/tree/master/raspberry_pi/docker/swarm).

## Node-RED container
In this example we want to build a [Node-RED](https://nodered.org/) image for the ARM platform.
With Node-RED we have a powerful flow editor to create rules and transport data between different technologies and interfaces based on [Node.js](https://nodejs.org).
If we have a look on the [Docker Hub project page](https://hub.docker.com/r/nodered/node-red-docker/) there is already a container for x64 platforms but not for ARM.

## Preparations
Building our own docker images a _Dockerfile_ on the target platform is needed. Docker use this file for its _build_ command to get all the necessary information from it and create a new image.
1. Login to the Pi via SSH
    ```$ sh {USER}@{IP|HOSTNAME}```
2. Create a new directory structure inside the users home and create an empty _Dockerfile_
    ```sh
    $ cd ~
    $ mkdir docker docker/nodered
    $ cd docker/nodered
    $ touch Dockerfile
    ```
3. Open the Dockerfile with an editor of your choice (I use _nano_)
    ```$ nano Dockerfile```

## Dockerfile
A Dockerfile needs some minimum 
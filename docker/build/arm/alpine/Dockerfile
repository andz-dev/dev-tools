# Use the Node.js Alpine container image
FROM alpine:3.8

LABEL NAME "Andreas Elser"
LABEL Version "0.1"

# Install some necessary tools because some nodes needs to be rebuild
RUN apk add --no-cache python
RUN apk add --no-cache make g++
RUN apk add --no-cache npm

# Install Node-RED described in the official documentation
RUN npm i npm@latest -g
RUN npm install -g --unsafe-perm node-red node-red-admin rpi-gpio

# Expose the default Node-RED port
EXPOSE 1880

# Define the entrypoint and start Node-RED
ENTRYPOINT [ "node-red" ]
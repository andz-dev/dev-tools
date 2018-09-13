# If you use Secure Boot on a system that Linux is installed and
# VMware Workstation you need to load the vmnet and vmmon drivers
# manually every time a new kernel update is installed.
# https://kb.vmware.com/s/article/2146460
# This script helps you to simplify the installation.

#!/bin/bash

# Generate a key pair using the openssl to sign vmmon and vmnet modules
openssl req -new -x509 -newkey rsa:2048 -keyout ~/MOK.priv -outform DER -out ~/MOK.der -nodes -days 36500 -subj "/CN=VMware/";

# Sign the modules using the generated key by running these commands
/usr/src/linux-headers-`uname -r`/scripts/sign-file sha256 ~/MOK.priv ~/MOK.der $(modinfo -n vmmon);
/usr/src/linux-headers-`uname -r`/scripts/sign-file sha256 ~/MOK.priv ~/MOK.der $(modinfo -n vmnet);

#Import the public key to the system's MOK list by running this command
mokutil --import ~/MOK.der

echo "Your system is prepared to install the modules on the next reboot.
Use your password you've set during the script execution."
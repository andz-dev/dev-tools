# Secure Boot and VMware Workstation on Linux
If you have VMware Workstation installed on your Linux system and Secure Boot activate in the BIOS/UEFI you need to sign the VMware drivers vmnet and vmmon manually.
This happens because VMware doesn't provide signed driver for their Linux installations.
The source with the manual installation steps can be found [here](https://kb.vmware.com/s/article/2146460) or you use my script to do this automatically.

Tested with [Linuxt Mint 19 Cinnamon](https://linuxmint.com/download.php).

## Download and run
Clone this repository or download the files directly to your local system.

### Git clone
```sh
$ git clone https://github.com/andz-dev/dev-tools.git
$ cd dev-tools/secure_boot/vmware
$ chmod +x install_docker_compose_extensions.sh
$ sudo sh install_docker_compose_extensions.sh
```

### Download via wget and run the script
```sh
wget -O sign_vmware_wks_drivers.sh https://github.com/andz-dev/dev-tools/tree/master/secure_boot/vmware/sign_vmware_wks_drivers.sh?raw=true; chmod +x sign_vmware_wks_drivers.sh; sudo sh sign_vmware_wks_drivers.sh
```

Wait till the tools were installed and the configuration was set. Login again so you can use Docker without _sudo_.
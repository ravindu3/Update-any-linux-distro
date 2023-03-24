#!/bin/bash

# Get the ID of the Linux distribution
source /etc/os-release
ID=$ID

# Update the system based on the Linux distribution
case $ID in
    "debian")
        apt-get update
        apt-get upgrade -y
        ;;
    "ubuntu")
        apt-get update
        apt-get upgrade -y
        ;;
    "centos")
        yum update -y
        ;;
    "fedora")
        dnf update -y
        ;;
    *)
        echo "Unsupported Linux distribution: $ID"
        exit 1
        ;;
esac

# Reboot the system if necessary
if [ -f /var/run/reboot-required ]; then
    echo "Rebooting system..."
    reboot
fi

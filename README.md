# Update-any-linux-distro
This script updates the Linux system based on the distribution identified in the /etc/os-release file.

Usage
To use this script, simply run the update_system.sh file. The script will automatically detect the Linux distribution and use the appropriate package manager command to update the system.

If a system reboot is required after the update, the script will detect this and prompt you to reboot.

Note that running updates and rebooting the system can be risky operations, so use this script with caution and make sure to back up your data before running any updates.

Supported Linux Distributions
This script currently supports the following Linux distributions:

Debian
Ubuntu
CentOS
Fedora

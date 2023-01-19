#!/bin/bash

# This script will run after all packages have been installed and files have been copied.
# The first and only argument passed is the username.
#
# Be aware that this does NOT run in the chroot environment
# To run commands in the chroot environment, use the following syntax:
#       arch-chroot /mnt bash -c "<your command here>"

# set username variable
username="$1"


# your code here


exit 0

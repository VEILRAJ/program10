#!/bin/bash

# Removes existing swapfile
rm -f /swapfile

# Creates swap file
dd if=/dev/zero of=/swapfile bs=1M count=1024

# Uses chmod 600
chmod 600 /swapfile

# Creates swap signature
mkswap /swapfile

# Activates swap
swapon /swapfile

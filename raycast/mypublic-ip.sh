#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title My Public IP Address
# @raycast.mode inline
# @raycast.refreshTime 1m

# Optional parameters:
# @raycast.icon 🌐
# @raycast.packageName System

# Documentation:
# @raycast.description Show public ip address
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

# Example:
#
# Filesystem       Size   Used  Avail Capacity iused      ifree %iused  Mounted on
# /dev/disk1s6s1  113Gi   15Gi  3.4Gi    82%  563983 1182278497    0%   /

ip=$(curl -s https://api.ipify.org)

printf "Your public IP address is : $ip"

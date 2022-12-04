#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Flush DNS
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 📡
# @raycast.packageName Flush DNS

# Documentation:
# @raycast.description Flush and clear DNS cache
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

echo -e "Flushing DNS cache...\n"
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder
say dns cleared successfully

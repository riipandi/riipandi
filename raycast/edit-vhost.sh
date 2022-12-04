#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Edit Nginx vhost
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName edit-vhost

# Documentation:
# @raycast.description Edit Nginx VirtualHost
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

code /usr/local/etc/nginx/servers/default.conf

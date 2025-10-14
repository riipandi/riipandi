#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title GetIPAddr
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 💻
# @raycast.packageName Get IP Address
# @raycast.argument1 { "type": "text", "placeholder": "aris.web.id" }

# Documentation:
# @raycast.description Get IP Address from domain
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

dig @4.2.2.1 +short $1

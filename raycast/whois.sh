#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title WHOIS
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 👀
# @raycast.packageName WHOIS Domain Name
# @raycast.argument1 { "type": "text", "placeholder": "domain" }

# Documentation:
# @raycast.description Find Domain WHOIS record
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

# whois $1
# curl -s "https://api.rna.id/api/domain-whois?domain=$1" | jq -r '.data' | sed 's/\\r\\n/\n/g'

# https://github.com/ducaale/xh
xh get "https://api.rna.id/api/domain-whois?domain=$1" | jq -r '.data' | sed 's/\\r\\n/\n/g'

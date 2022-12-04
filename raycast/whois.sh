#!/bin/bash

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

whois $1

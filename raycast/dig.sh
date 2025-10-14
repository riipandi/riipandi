#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Dig
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 👀
# @raycast.packageName DNS Lookup Utility
# @raycast.argument1 { "type": "text", "placeholder": "domain" }

# Documentation:
# @raycast.description Find DNS Record
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

dig +noall +answer $1

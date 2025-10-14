#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Unix Time to UTC
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon ⏰
# @raycast.packageName Unix Time to UTC
# @raycast.argument1 { "type": "text", "placeholder": "timestamp" }

# Documentation:
# @raycast.description Convert a Unix Timestamp to UTC
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

date -ju -f "%s" $1

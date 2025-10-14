#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Unix Time to Local Time
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon ⏰
# @raycast.packageName Unix Time to Local Time
# @raycast.argument1 { "type": "text", "placeholder": "timestamp" }

# Documentation:
# @raycast.description Convert a Unix Timestamp to Local time
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

date -j -f "%s" $1

#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Decode JWT Token
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🗝️
# @raycast.packageName JWT Decode
# @raycast.argument1 { "type": "text", "placeholder": "token" }

# Documentation:
# @raycast.description Decode JWT Token
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

jq -R 'split(".") | .[0] | @base64d | fromjson' <<< "$1"
jq -R 'split(".") | .[1] | @base64d | fromjson' <<< "$1"

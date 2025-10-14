#!/usr/bin/env bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title RANDOMSTR
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🔏
# @raycast.packageName Generate Random String
# @raycast.argument1 { "type": "text", "placeholder": "length" }

# Documentation:
# @raycast.description Generate random string
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

if [ -z "$1" ]; then
    openssl rand -hex 8
else
    openssl rand -base64 500 | tr -dc 'a-zA-Z0-9' | fold -w $1 | head -n 1
fi

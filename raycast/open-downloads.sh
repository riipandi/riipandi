#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Downloads Folder
# @raycast.mode silent
# @raycast.packageName System
#
# Optional parameters:
# @raycast.icon 🪤
# @raycast.currentDirectoryPath ~/Downloads
# @raycast.needsConfirmation false
#
# Documentation:
# @raycast.description Open Downloads folder on macOS
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

open -a Finder $HOME/Downloads

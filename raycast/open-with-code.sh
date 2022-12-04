#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open With VSCode
# @raycast.mode silent
# @raycast.packageName System
#
# Optional parameters:
# @raycast.icon ≫
# @raycast.currentDirectoryPath /
# @raycast.needsConfirmation false
# @raycast.argument1 { "type": "text", "placeholder": "path", "optional": false }
#
# Documentation:
# @raycast.description Open a folder or file with VSCode
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

if [[ ${1} =~ "~" ]]
then
	code $(sed -r 's#~#'$HOME'#' <<< "$1")
else
	code ${1}
fi

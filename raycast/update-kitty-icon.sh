#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Update Alacritty Icon
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🎒
# @raycast.packageName Update Alacritty Icon

# Documentation:
# @raycast.description Update Alacritty Icon
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

set -eo pipefail

# icon_path=/Applications/Alacritty.app/Contents/Resources/alacritty.icns
# if [ ! -f "$icon_path" ]; then
#   echo "Can't find existing icon, make sure Alacritty is installed"
#   exit 1
# fi

# echo "Backing up existing icon"
# hash="$(shasum $icon_path | head -c 10)"
# mv "$icon_path" "$icon_path.backup-$hash"

# echo "Downloading replacement icon"
# icon_url=https://github.com/k0nserv/kitty-icon/archive/refs/heads/main.zip
# curl -sL $icon_url | unzip > "$icon_path"

# touch /Applications/Alacritty.app
# killall Finder
# killall Dock

echo -e "\nAll is well!"

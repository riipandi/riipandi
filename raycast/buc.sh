#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title BUC
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🍺
# @raycast.packageName Brew Packages Updater

# Documentation:
# @raycast.description Update Brew Packages
# @raycast.author Aris Ripandi
# @raycast.authorURL https://github.com/riipandi

echo "Updating brew packages ..."
brew update

echo -e "\nUpgrading brew packages ..."
brew upgrade

echo -e "\nClean up the junks ..."
brew cleanup

echo -e "\nAll is well!"

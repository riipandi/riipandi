#!/usr/bin/env bash
## =============================================================================
#
# I've always enjoyed watching developers work. Which editor do they use?
# Do they prefer Terminal or iTerm? Are they using a virtual machine?
# If only in small pieces, I've learned from every developer I've ever worked with.
#
# This repository contains automated setup scripts for my preferred tools and
# dev-based macOS defaults.
#
# > **Warning:** If you want to give this setup a try, you should first fork
# > this repository, review the code, and remove things you don’t want or need.
# > Don’t blindly use my settings unless you know what they entail.
# > *Use at your own risk!*
#
## =============================================================================
# Usage:
#   SHELL_SCRIPTS_PATH="{where_you_cloned_this_repo}/scripts"
#   export PATH="$SHELL_SCRIPTS_PATH:$PATH"
#
# Available Commands:
#   setup     run the installer and system configuration
#   update    update all packages and apps
#   clean     purge caches and prune git repos
## =============================================================================
## Thanks to...
# - Todd Austin and his [dotfiles repository](https://github.com/austintoddj/dev-setup)
# - Mathias Bynens and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles)
# - Nicolas Gallaghar and his [dotfiles repository](https://github.com/necolas/dotfiles)
# - Trevor Miller and his [dotfiles repository](https://github.com/trevordmiller/dotfiles)
## =============================================================================
set -euo pipefail

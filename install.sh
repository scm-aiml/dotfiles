#!/usr/bin/env zsh


# Credit: woefe/dotfiles

###################### Boilerplate and preparation ######################
function check_prog() {
    if ! hash "$1" > /dev/null 2>&1; then
        echo "Command not found: $1. Aborting..."
        exit 1
    fi
}

check_prog stow
check_prog curl

CONFIGDIR="$HOME/.config"

# Check if the directory does not exist
if [[ ! -d $CONFIGDIR ]]; then
  # Directory does not exist, so create it
  echo "Creating directory: $CONFIGDIR"
  mkdir -p $CONFIGDIR
fi

#########################################################################



############################# How to use it #############################
#                                                                       #
# Uncomment the lines of the configs you want to install below.         #
# Then run this script from within the dotfiles directory.              #
# E.g. `cd ~/.dotfiles; ./install.sh`                                   #
#                                                                       #
# To uninstall the config later, run stow -D in the dotfiles directory. #
# E.g. `cd ~/.dotfiles; stow -D vim`                                    #
#                                                                       #
#########################################################################

# INSTALLS
stow -v2 --target "$HOME" nvim
#stow -v2 --target "$HOME" tmux


# UNINSTALLS
#stow -v2 -D --target "$HOME"  nvim

#!/usr/bin/env bash

script_dir=$(dirname "$(readlink -f "$0")")

# Backup existing .bash_profile if it exists
if [ -f "$HOME/.bash_profile" ]; then
    mv "$HOME/.bash_profile" "$HOME/.bash_profile_backup"
fi

# Backup existing .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    mv "$HOME/.bashrc" "$HOME/.bashrc_backup"
fi

# Create symlinks
ln -s "$script_dir/bash_profile" "$HOME/.bash_profile"
ln -s "$script_dir/bashrc" "$HOME/.bashrc"


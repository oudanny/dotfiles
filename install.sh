#!/usr/bin/env bash

script_dir=$(dirname "$(readlink -f "$0")")

mv "$HOME/.bash_profile" "$HOME/.bash_profile_backup"
mv "$HOME/.bashrc" "$HOME/.bashrc_backup"


# Create symlinks
ln -s "$script_dir/bash_profile" "$HOME/.bash_profile"
ln -s "$script_dir/bashrc" "$HOME/.bashrc"


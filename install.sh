#!/usr/bin/env bash

script_dir=$(dirname "$(readlink -f "$0")")


[ -f "$HOME/.bash_profile" ] && mv "$HOME/.bash_profile" "$HOME/.bash_profile_backup"
[ -f "$HOME/.bashrc" ] && mv "$HOME/.bashrc" "$HOME/.bashrc_backup"

rm -f $HOME/.bash_profile
rm -f $HOME/.bashrc
# Create symlinks
ln -s "$script_dir/bash_profile" "$HOME/.bash_profile"
ln -s "$script_dir/bashrc" "$HOME/.bashrc"


#!/bin/bash

sudo apt-get install dconf-cli
cd gnome-terminal-colors-solarized
./install.sh
cd ..
eval `dircolors dircolors-solarized/dircolors.ansi-dark`

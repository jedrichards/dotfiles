# dotfiles

A selection of personal dotfiles designed for OSX and Ubuntu. These ones work well for me, your milage may vary.

Inspired and in many cases shamelessly copy and pasted from [dotfiles.github.com](http://dotfiles.github.com/), especially [github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

## Overview

Dotfiles sit in your home directory and configure your shell environment. Some are used to configure individual tools (like `.nanorc`), and others are run everytime you open a new shell window (`.bashrc`) and do things like make your command prompt look pretty and set aliases.

The repo should be cloned to some sensible location on your system, for example `~/dotfiles/`. The included `publish.sh` script can then used to `rsync` the dotfiles to your home directory whenever you fancy updating. You may need to close and re-open your shell window to see all the changes or run a command like `source ~/.bash_profile`.

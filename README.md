# dotfiles

A selection of personal dotfiles designed for OSX and Ubuntu.

Inspired and in many cases shamelessly copy and pasted from [dotfiles.github.com](http://dotfiles.github.com/), especially [github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

### Overview

Dotfiles sit in your home directory and configure your shell environment. Some are used to configure individual tools (like `.screenrc`), and others are run everytime you open a new shell window (`.bashrc`) and do things like make your command prompt look pretty and set aliases.

### Usage

The repo should be cloned to some sensible location on your system, for example `~/dotfiles/`. The included `publish.sh` script can then used to copy the dotfiles to your home directory (and optionally the home directories of any remote servers you also work on). Be careful, the script will clobber any existing files in your home directory that have the same name. Invoke `publish.sh` like so:

	./publish.sh

You may need to close and re-open your shell window to see all the changes and/or run a command like `source ~/.bash_profile`.

### .personal

Any personal settings (Git configuration email addresses, server IP addresses etc.) probably don't belong in a public GitHub repo. I've put these in a `.personal` file which isn't in the Git repo but `.bash_profile` will pull it in if it exists. Amongst other things it defines a `$DFREMOTES` array which lists remote servers that these dotfiles should also be copied to when `publish.sh` is invoked. Mine looks a bit like this:

	# Git config.
	git config --global user.name "username"
	git config --global user.email "email-address"
	git config --global github.user "github-username"
	git config --global github.token "github-token"

	# Array of remote servers to publish dotfiles to.
	DFREMOTES=('user@host:~' 'user@host:~' 'user@host:~')

### .osx

Copied from mathiasbynen's [mths.be/osx](http://mths.be/osx) file, this isn't a dotfile in the strict sense. It doesn't live in your home directory and run automatically, rather you can manually invoke it whenever you want to apply the OSX settings contained within it. Designed to be used to quickly set some familiar defaults when setting up a new system or user account.

	./.osx

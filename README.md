# dotfiles

A selection of personal dotfiles designed for OSX and Ubuntu.

Inspired and in many cases shamelessly copy and pasted from [dotfiles.github.com](http://dotfiles.github.com/), especially [github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles).

### Overview

Dotfiles sit in your home directory and configure your shell environment. Some are used to configure individual tools (like `.screenrc`), and others are run everytime you open a new shell window (`.bashrc`) and do things like make your command prompt look pretty and set aliases.

### Usage

The repo should be cloned to some sensible location on your system, for example `~/dev/dotfiles/`. The included `publish.sh` script can then used to copy the dotfiles to your home directory. Be careful, the script will clobber any existing files in your home directory that have the same name. Invoke `publish.sh` like so:

	./publish.sh

You should restart your shell once publishing has completed.

### Personal settings

The `.bash_profile` will attempt to source all the dotfiles in this repo along with a number of files that aren't. In particular:

	.personal/.path
	.personal/.git-config
	.personal/.misc
	.personal/.servers

I use these files to store any settings that may contain sensitive information. For example personal email addresses, server IPs and whatnot.

#### `.personal/.path`

Contains additions to my $PATH only relevant to my environment.

#### `.personal/.git-config`

Contains personal git configuration settings. Contents could look a bit like this: 

	git config --global user.name "username"
	git config --global user.email "email-address"
	git config --global github.user "github-username"

#### `.personal/.misc`

Contains various personal settings and functions, e.g. shortcuts for ssh-ing into often used remote servers.	

#### `.personal/.servers`

The `publish.sh` script is also capable of rsyncing these dotfiles to remote servers. This is achieved by defining an array of remote hosts in a `.personal/.servers` file. The contents could look a bit like this:

	export DOTFILESERVERS=('user@0.0.0.0:~')

If the `.servers` file is present and it contains a valid DOTFILESERVERS array then `publish.sh` will pick it up and use it.

### .osx

Copied from mathiasbynen's [mths.be/osx](http://mths.be/osx) file, this isn't a dotfile in the strict sense. It doesn't live in your home directory and run automatically, rather you can manually invoke it whenever you want to apply the OSX settings contained within it. Designed to be used to quickly set some familiar defaults when setting up a new system or user account.

	./.osx

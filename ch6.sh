#!/bin/bash

# Chapter 6: Packages

# 1) Package Managers
# A package manager is a software tool that helps you install other software. 
# Its primary functions include:
# - Downloading software from official sources
# - Installing software
# - Updating software
# - Removing software
# - Managing dependencies

# APT (Ubuntu)
# The primary manager for Ubuntu is APT (Advanced Package Tool).
# If on WSL or Ubuntu, check to make sure APT installed by running the command:
apt --version

# Brew (macOS)
# There isn't a default package manager for macOS.
# The most popular (but unofficial) package manager is Homebrew.
# If on macOS, but it doesn't have Homebrew installed, install it by running the command:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# How Does a Package Manager Work?
# When typing a command like for example 'apt install neovim', the package manager will:
# 1. Check to see if the package is already installed.
# 2. If it's not installed, it will download the package from a repository.
# 3. It will install the package on your computer.
# 4. It will install any dependencies that the package needs to run.
# 5. It will (hopefully) add the package to your PATH if it should be there.

# For you edification, take a look at where your package manager installed nvim
# on your filesystem. The command:
which nvim



# 2) Webi
# Webi is a package manager which lets you install command line tools directly from the web,
# with no need for a local command line tool like apt or brew.

#!/bin/bash

# Chapter 1: Terminals and Shells

# Windows Subsystem for Linux
# How to install it:
# Open the Windows Command Prompt, type: wsl --install
# Confirm the installation by running: wsl -l -v

# How to run WSL:
# Open your CLI, type: wsl -d distro -u uname => Example: wsl -d Ubuntu-24.04 -u juniariprs

# REPL (Read, Evaluate, Print, Loop)
expr 123456 + 7890

# Variables
bankname="WorldBanc"
founded=1969
ceo="Jeff Gates"
echo $bankname "was founded in" $founded "by" $ceo"."

# History
# How to see history of commands which you already run, type:
history
# How to clear history, type:
history -c
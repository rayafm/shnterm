#!/bin/bash

# Chapter 3: Permissions

# 1) Users
# The sudo keyword run a command as a "superuser". It's short for "superuser do". 
# Note: sudo grants unrestricted access and can risk system damage if you don't know what you're doing. 
# Run the whoami command to see which user you're logged in as:
whoami

# Run the same command as root: 
sudo whoami



# 2) Permissions
# The permissions of an individual file or directory are visually represented as a 10-character string:
drwxrwxrwx

# The first one tells you whether you're looking at a file or a directory:
# -: Regular file (e.g. -rwxrwxrwx)
# d: Directory (e.g. drwxrwxrwx)

# The next 9 character are broken up into 3 sets of rwx and reprresents the permissions themselves
# for the "owner", "group", and "others", in order. 
# Each group of 3 represents the permissions for reading, writing, and executing, in order. 
# For example:
# rwx: All permissions 
# rw-: Read and write, but not execute
# r-x: Read and execute, but not write
# The first 3 character are "owner" permissions. The "owner" is usually just the user who created
# the file or directory, but it can be manually changed. 
# The next 3 character are "group" permissions. Unix-like systems support groups of users and a file or directory
# can be assigned to a single group. 
# The last 3 characters are "others" permissions. This is everyone else.
# Here are some full examples:
# -rwxrwxrwx: A file where everyone can do everything
# -rwxr-xr-x: A file where everyone can read and execure, but only the owner can write
# drwxr-xr-x: A directory where everyone can read (ls the contents) and execute (cd into it), 
# but only the owner can write (modify the contents)
# drwx------: A directory where only the owner can read, write, and execute



# 3) Changing Permissions
# The chmod command lets you change the permissions of a file or directory. 
# It's short for "change mode".
chmod -R u=rwx,g=,o= DIRECTORY

# In the command above, u means "user" (aka "owner"), g means "group", and o means "others". 
# The = means "set the permissions to the following", and the rwx means "read, write, and execute". 
# The g= and o= mean "set group and other permissions to nothing".
# The -R means "recursively", which means "do this to all of the contents of the directory as well".



# 4) Executables
# Executable files are just files where the data stored inside is a program that you can run on your computer.
# Files with a .sh extension are shell scripts. They're just text files that contain shell commands.
mydir/program.sh

# If the program is in the current directory, you need to prefix it with ./ to run it:
./program.sh



# 5) Root User
# The "root" user is a superuser. It has access to everything on the system and can do anything. 
# When you use the sudo command, you're running as the root user (as long as your system hasn't been
# configured differently.
# The sudo keyword quickly gives you elevated permissions to run a single command. 
# However, it can also be dangerous because it gives you access to everything. 
# If you run a command with sudo that you don't understand, you could do serious damage to your system.
# For example, rm with the r and f flags on the root directory (/), will delete all the files on your system.
# The r flag is for "recursive" (delete everything inside) and the f flag is for "force".
# As long as you understand what the command you're running, use sudo carefully.



# 6) Chown
# The chown command, which stands for "change owner", allows you to change the owner of a file or directory, 
# and it requires root privileges.
sudo chown -R root contacts

# Here's an explanation of the command: 
# sudo - Run as the root user
# chown - Command to change the owner
# -R - "Recursive", meaning also apply the changes to everything inside the directory
# root - The name of the new owner
# contacts - The directory to change the owner of
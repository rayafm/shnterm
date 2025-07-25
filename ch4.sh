#!/bin/bash

# Chapter 4: Programs

# 1) Compiled vs Interpreted
# A program is a set of instructions that a computer can execute
# An executable is a file that contains a program
# Two types of programs: 
# - Compiled programs
# - Interpreted programs



# 2) Shebang 
# You can run any executable file by typing its file path into your shell 
bin/genids.sh 

# Those are compiled executables 
# For scripts that need to be interpreted by another program, 
# the computer needs to be told what program to use to interpret the file 

# A shebang is a special line at the top of a script that tells your shell 
# which program to use to execute the file 

# The format of a shebang is:
# #! interpreter [optional-arg]

# If your script is a Python script and you want to use Python 3, 
#!/usr/bin/python3



# 3) Bourne Shell
# Ubuntu on WSL => run a Bash shell
# macOS => run a Zsh shell

# The difference between 3 shells you're likely to encounter:
# sh: The Bourne shell. This is the original Unix shell and is POSIX-compliant.
# It's very basic and doesn't have many quality-of-life features.

# bash: The Bourne Again shell. This is the most popular shell on Linux.
# It builds on sh, but also has a lot of extra features.

# zsh: The Z shell. This is the most popular shell on macOS. 
# Like bash, it does what sh can do, but also has a lot of extra features. 

# Both zsh and bash are "sh-compatible" shells, meaning they can run .sh scripts, 
# but they also have extra features that generally make them more pleasant to use. 
# The differences between zsh and bash are not super significant.



# 4) Shell Configuration
# Bash and Zsh both have configuration files that run automatically each time you start 
# a new shell session. These files are used to set up your shell environment. 
# They can be used to set up aliases, functions, and environment variables.

# These files are located in your home directory (~) and are hidden by default. 
# The ls command has a -a flag that will show hidden files. 
ls -a ~

# If using Bash, .bashrc is the file you want to edit.
# If using Zsh, .zshrc is the file you want to edit or create if it doesn't yet exist.



# 5) Environment Variables
# Create and use local variables in your shell:
name="June"
echo $name
# June

# There is another type of variable called an environment variable. 
# They are available to all programs that you run in your shell. 

# How to view all of the environment variables that are currently set in your shell:
env

# How to set a variable in your shell, use the export command:
export NAME="June"

# Then, use the variable in your shell:
echo $NAME
# June

# Programs and scripts you run in your shell can also use that variable:
# We can create a file called introduce.sh with the following contents:

#!/bin/sh
echo "Hi I'm $NAME"

# Then, run it:
chmod +x ./introduce.sh

./introduce.sh
# Hi I'm June



# 6) PATH
# There are environment variables that are sort of "built-in" to  the shell. 
# "Built-in" means that different programs and parts of the system 
# know about them and use them. 

# The PATH variable is a list of directories that the shell will look into 
# when trying to run a command. 

# How to look at your current PATH variable
echo $PATH 

# A giant list of directories separated by colons (:)
# For example:
/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin 

# The shell will look for executables in the following directories:
# /usr/local/bin
# /usr/bin
# /bin
# /usr/sbin
# /sbin



# 7) Change Your PATH 
# A common problem is when installing a new program on your machine, 
# but when trying to run it from your terminal, you get an error like:
$ my-new-program
-bash: my-new-program: command not found

# It's because the program is installed in a directory that's not in your PATH variable. 




# 8) PATH Config
# How to add directory to your PATH without overwriting all of the existing directories, 
# use the export command and reference the existing PATH variable:
export PATH="$PATH:/path/to/new"

# The $PATH part is a reference to the existing PATH variable. 
# The : separates the existing directories from the new directory (/path/to/new) that added.
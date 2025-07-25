#!/bin/bash

# Chapter 5: Input/Output

# 1) Man
# The man command is short for "manual". 
# It's a program that displays the manual for other programs.

# Using man
# How to read the manual's manual:
# open the man pages for the 'man' command
man man

# Searching
# How to search for text in the manual
man ls
# type '/-r' to start searching
# press 'n' to jump to the next result
# press 'N' to go back if you went too far



# 2) Flags
# Flags are options that you can pass to a command to change its behavior.

# The ls command can take a -l flag to show a "long" listing of files:
ls -l

# The -a flag to show "all"files, including hidden files:
ls -a

# Combine flags:
ls -al

# Conventions
# There are some common conventions:
# - Single-character flags are prefixed with a single dash (e.g -a)
# - Multi-character flags are prefixed with two dashes (e.g --help)
# The same flag can be used with a single dash or two dashes (e.g. -h or --help)



# 3) Positional Arguments
# In a shell, commands (programs) can also take arguments.

# For example, the cd command takes a single argument (the directory to change to):
cd /home/juniariprs

# For example, the mv command takes two arguments: 
# the file to move and the destination to move it to:
mv file.txt new_file.txt



# 4) Help
# A "help" option prints information about how to use the tool.
# It's usually accessed with one of the following:
# --help (flag)
# -h (flag)
# help (first positional argument)
# The "help" output is often easier to parse than a full man page 
# and usually more of a quick start guide than a full manual.



# 5) Exit Codes
# Exit codes (sometimes called "return codes" or "status codes") 
# It is how programs communicate back whether they ran successfully or not.
# 0 is the exit code for success. Any other exit code is an error.
# 9 times out of 10, if a non-zero exit code is returned (meaning an error), 
# it will be 1, which is the "catch-all" error code.
# Programs that call other programs use error codes 
# to figure out if execution was successful.

# In a shell, you can access the exit code of the last program you ran 
# with the question mark variable ($?). 
# For example, if you run a program that exits with a non-zero exit code, 
# you can see what it was with the echo command:
ls ~
echo $?
# 0

ls /does/not/exist
echo $?
# 1



# 6) Standard Output
# "Standard Output", usually called "standard out" or "stdout", 
# is the default place where programs print their output. 
# It's a stream of data that prints to the terminal.

# In a shell, a simple way to print to stdout, it's the echo command:
echo "Hello world"
# Hello world



# 7) Standard Error
# "Standard Error", usually called "stderr", is a data stream 
# just like standard output, but is intended to be used for error messages. 
# It's a separate stream so that you can redirect it to a different place if need be, 
# but by default, it prints to the terminal just like stdout.

# Redirecting Streams
# You can redirect stdout and stderr to different places using the > and 2> operators.
# > redirects stdout and 2> redirects stderrr.

# Redirect stdout to a file
echo "Hello world" > hello.txt
cat hello.txt
# Hello world

# Redirect stderr to a file
cat doesnotexist.txt 2> error.txt
cat error.txt
# cat: doesnotexist.txt: No such file or directory



# 8) Standard In
# "Standard Input", usually called "standard in" or "stdin".
# is the default place where programs read their input.
# It's just a stream of data that programs can read from as they run.


# How to read from stdin
# For example, use of stdin to read your name:
echo "Please enter your name:"
read NAME



# 9) Piping
# In the shell, you can pipe the output of one program into the input of 
# another program. With this one simple concept, you can run incredibly 
# powerful automation tasks. 

# Pipe
# The pipe operator is |. The pipe operator takes the stdout of the program 
# on the left and "pipes" it into the stdin of the program on the right.
echo "Have you heard the tragedy of Darth Plagueis the Wise?" | wc -w
# 10

# The echo command above sends "Have you heard the tragedy of Darth Plagueis the
# Wise?" to stdout. The pipe operator pipes it into the wc (word count) command. 
# The wc command counts the number of words in the input it receives. The -w flag 
# tells wc to only count words. The wc command, like most shell commands, can optionally 
# read from stdin instead of a filepath.



# 10) Interrupt
# Sometimes, a program will get stuck and you'll want to stop it. Common reasons for
# this are:
# - You made a typo in the command and it's not doing what you want
# - It's trying to access the internet, but you're not connected
# - It's processing too much data and you don't want to wait for it to finish
# - There is a bug in the program causing it to hang

# In these cases, you can stop the program by pressing ctrl+c. This sends "SIGINT" signal to
# the program, which tells it to stop.



# 11) Kill
# Sometimes, a program is in a bad state (or is malicious) that it doesn't respond to the SIGINT.
# In this case, the best option is to use another shell session (new terminal window) to manually
# kill the program

# Syntax
kill PID

# PID stands for "process ID".
# Every process that's running on your machine has a unique ID.

ps aux
# The ps, "process status" command can be used to list the processes running on your machine, 
# and their IDs.

# The "aux" options just mean "show all processes, including those owned by users, 
# and show extra information about each process.



# 12) Unix Philosophy
# The Unix Philosophy is a simple set of principles that have guided the development of 
# Unix-like operating systems for decades. It can be summarized as:
# 1. Write programs that do one thing and do it well.
# 2. Write programs to work together.
# 3. Write programs to handle text streams, because that is a universal interface.

# 1. Write Programs that Do One Thing and Do It Well
# ls, grep, and less are programs which do one thing, do it well, don't try to do too much.
# ls lists files and directories
# grep searches for texts
# less displays the text

# 2. Write Programs to Work Together
# According to the Unix Philosophy, at least programs should do one thing and do it well, 
# it'e easy to write programs that work together.
# For example, use grep to search for text in a file, 
# and then pipe the output of grep into less 
# to display the results interactively
grep "hello" a_file.txt | less

# 3. Write Programs to Handle Text Streams, Because That is a Universal Interface
# Programs work together easily when they all use the same interface: text streams.
# A text stream is a sequence of characters that can be read or written sequentially.
# In other words, a text stream is only a text.
# This hearkens back to the point at the beginning of this course: 
# the shell is a command-line (text) interface.
# Text-based interfaces are much more powerful and extensible than graphical interfaces.



# 13) Top
# The top command is a powerful tool that allows you to see which programs are using
# the most resources on your computer.
# The top command can be used on local machine and on remote server
# to diagnose performance issues.

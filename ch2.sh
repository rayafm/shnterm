#!/bin/bash

# Chapter 2: Filesystems

# 1) Filesystems
# Filesystem: Files and directories which are organized into a tree-like structure
# Directories (or "folders" on Windows) are containers that hold files and other directories
# Files are a dump of raw binary data: 1's and 0's
# The bytes in a file can represent anything: text, images, videos, etc
# The filesystem tree starts with a single directory called the root directory
# The root directory contains files and directories, which can contain more files and directories
# "print working directory" command to see the filepath of the current working directory:
pwd



# 2) Filepaths
# A filepath is a string that describes the location of a file or directory on your computer. 
/Users/juniariprs
# The first slash (/) represents the root directory. It's the tippy-top of the filesystem tree.
# The next part (Users) is the name of a directory inside the root directory.
# The last part (juniariprs) is the name of a directory inside the Users directory.
# This path represents a directory 2 levels down from the root directory:
root
  └── Users
        └── juniariprs



# 3) Parent Directories
# The cd command "changes directory" to move into a directory. 
# How to move back out of the current directory: 
cd ..
#  .. (two dots) is a special alias that refers to "the parent directory. 
# It is a shortcut that you can use to move up one level in the directory tree.



# 4) Absolute vs. Relative Paths
# For example, let's say we have the following directory structure in our filesystem:
vehicles
├── cars
│   ├── fords
│   │   ├── mustang.txt
│   │   └── focus.txt
# When inside the top-level vehicles directory, the relative path to the mustang.txt file is:
cars/fords/mustang.txt
# However, when we are inside the cars directory, the relative path to the mustang.txt file is just:
fords/mustang.txt
# When inside the fords directory, just:
mustang.txt

# Absolute Paths
# An absolute path is a path that starts at the root of the filesystem. 
# On Unix-like systems (macOS/Linux), the root is denoted by a forward slash /. 
# If the vehicles directory is in the filesystem root, the absolute path to the mustang.txt file is:
/vehicles/cars/fords/mustang.txt
# When inside the fords directory, you can use either:
/vehicles/cars/fords/mustang.txt 
# or
mustang.txt
# to refer to the same file.

# Which Should I Use?
# Relative paths are easier to read and write, as long as you are in the correct directory 
# (or the directory you expect), they are easier to reason about.
# Absolute paths are more explicit. They are useful when you are not sure what directory you are currently in.



# 5) Files
# Files are blobs of data. The raw bytes in a file can represent anything: text, images, videos, etc.

# The cat Command
# The cat command is used to view the contents of a file. 
# It's a short for "concatenate". which is a fancy way of saying "put things together". 

# Print the contents of a file to the terminal 
cat file1.txt 

# Concatenate the contents of multiple files and print them to the terminal 
cat file1.txt file2.txt



# 6) head and tail 

# The head command 
# The head command prints the first n lines of a file, where n is a number you specify. 
head -n 10 file1.txt 

# The tail command 
# The tail command prints the last n lines of a file, where n is a number you specify. 
tail -n 10 file1.txt



# 7) more and less 
# The more and less commands let you view the contents of a file, 
# one page (or line) at a time. 
# The less command does everything that the more command does, but also has more features.
# As a general rule, use less instead of more. 
# Use more if on a system that doesn't have less installed. 
less file1.txt 

# -N flag to show line numbers:
less -N file1.txt



# 8) Touch 
# The touch command updates the access and modification timestamps of a file. 
# By default, if the specified file does not exist, 
# touch will create an empty file with the given filename. 
touch new_file.txt 

# touch can be very handy when writing scripts because it ensures files exist 
# without altering existing ones, creating new files only if necessary. 
touch file.txt another_file.txt



# 9) Directories 
# A directory is a location in a filesystem that can contain files and other directories. 
# On some systems, directories are called "folders"

# The mkdir command 
# The "make directory" command creates a new directory inside the current directory: 
mkdir my_directory



# 10) Move 
# The move command moves a file or directory from one location to another. 
# It can be used to rename a file or to move it to a different directory altogeher. 
# The working directory can't be the directory you're moving. 

# Renaming a file: 
mv a_file.txt another_file.txt 

# Moving a file from the current directory to another nested directory: 
mv a_file.txt a_directory/a_file.txt 

# Moving a file from the current directory to the parent directory: 
mv a_file.txt ../a_file.txt 

# Not renaming the file and just moving it to a different directory: 
mv a_file.txt a_directory/



# 11) Remove 
# The remove command deletes a file or empty directory: 
rm a_file.txt 

# Optionally add a -r flag to tell the rm command to delete a directory 
# and all of its contents recursively. "Recursively" is just a fancy way of 
# saying "do it again on all of the subdirectories and their contents". 
rm -r a_directory



# 12) Copy 
# The copy command does copy a file from one location to another. 
cp source_file.txt destination/ 

# Copy a directory and all of its contents recursively by adding the -R flag: 
cp -R my_dir new_dir



# 13) Home 
# In a Unix-like operating system, a user's home directory is the directory 
# where their personal files are stored also the directory that a user starts in 
# when logging into the system. 
cd ~

# Danger: Be careful when working in other directories like /bin, /etc, /var 



# 14) Grep 
# The grep command is to search for text in files. 

# Basic Usage 
# The most basic use for grep is to search for a string in a file. 
# Example: search for the word "hello" in the file words.txt, run: 
grep "hello" words.txt 

# grep Multiple Files 
# Example: search fot the word "hello" in hello.txt and hello2.txt, run: 
grep "hello" hello.txt hello2.txt 

# Recursive Search 
# Example: search for the word "hello" in the current directory and all subdirectories: 
grep -r "hello" .
# The . is a special alias for the current directory.



# 15) Find 
# The find command is a powerful tool  for finding files and directories by name, 
# not by their contents. 

# Find a File by Name 
# Example: look for a file named hello.txt somewhere in the home directory, run: 
find a_directory -name hello.txt 

# Pattern Search 
# Example: find all files that end in .txt, run: 
find a_directory -name "*.txt"
# The * character is a wildcard that matches anything. 
# Example: find all filenames that contain the word "chad":
find a_directory -name "*chad*"
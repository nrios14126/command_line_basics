
#### Navigation ###################################################################################

## Introduction ***********************************************************************************

# The command line is a text interface for your computer. It's a program that takes in commands and 
# passes them on to the computer's operating system to run.

# From the command line, you can navigate through files and folders on your computer, just like 
# using the GUI tools File Explorer on Windows or Finder on MacOS. 

# When using the command line, we refer to folders as directories. Files and directories on your 
# computer are organized into a filesystem.

## Filesystem *************************************************************************************

# A filesystem organizes a computer's files and directories into a tree structure:
#     1. The first directory in the filesystem is the root
#        directory. It is the parent of all other directories
#        and files in the filesystem.
#     2. Each parent directory can contain more child directories
#        and files. 
#     3. Each directory can contain more files and child directories.
#        The parent-child relationship continues as long as directories
#        and files are nested. 

# A command is a directive to the computer to perform a specific task. 

# In the terminal, the first thing you see is $. This is called a shell prompt. It appears when the 
# terminal is ready to accept a command.

# To list all files and directories in the current directory:
ls 

# To print the working directory:
pwd

# To change the working directory:
cd directory_name

# When a file, directory, or program is passed into a command, it is called an argument. The cd 
# command takes a directory name as an argument and switches into that directory. 

# If you wish to move up one directory (the parent directory to the working directory):
cd ..

# To move across multiple directories with a single command, we can provide cd a relative path to 
# the directory as an argument:
cd path/to/the/directory

# Note that for Bash systems, forward slash indicates pathing.

# To go up from the working directory up two directories:
cd ../..

# We can also move to an adjacent directory using .. and then a directory name:
cd ../adj_directory

# To make a new directory within the working directory:
mkdir directory_name

# To make a new directory in a relative directory:
mkdir /path/to/directory

# To create new files within the working directory:
touch keyboard.txt

## Helper Commands ********************************************************************************

# The tab key can be used to autocomplete your command. When you are typing the name of an existing 
# file or directory, you can use tab to finish the rest of the name.

# The up and down keys can be used to cycle through your previous commands. The up key will take 
# you up through your most recent commands, and the down key will take you back through to the 
# most recent one. 

# To clean your terminal screen of previous commands and outputs:
clear

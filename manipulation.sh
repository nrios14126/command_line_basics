
#### Manipulation #################################################################################

## Options ****************************************************************************************

# We can use the command line to copy, move, and remove files and directories.

# When using commands, we can attach options to modify the behavior of the commands.

# The following command displays the contents of the working directory in more detail; it'll 
# display all the files and directories, including hidden ones (those whose names start with a dot 
# character)
ls -a

# This will list all contents of a directory in long format, as well as the file permissions:
ls -l

# This will order files and directories by the time they were last modified:
ls -t

# The -l option lists files and directories as a table. There are seven columns listed in the 
# table:
#     1. Access rights. These indicate the read, write, and execute
#        permissions on the file or directory allowed to the owner,
#        the group, and all users. 
#     2. Number of hard links. This represents the number of hard
#        links to the file or directory. This number includes the
#        parent directory and current directory (think of connections
#        in a tree diagram structure).
#     3. The username of the file's owner. 
#     4. The name of the group that owns the file.
#     5. The size of the file in bytes.
#     6. The date and time that the file was last modified.
#     7. The name of the file or directory.

# In addition to using each option separately, like ls -a or ls -l, mulitple options can be used 
# together:
ls -alt

## Displaying and Copying *************************************************************************

# The cat command outputs the contents of a specified file:
cat file_name.ext

# This is a useful command for peeking at files without opening them, and confirming the result of 
# other commands that change the contents of files. 

# The cp command copies files or directories:
cp file_name.ext copy_name.ext

# We could also copy a file to a destination directory (keeps the same name):
cp file_source.ext destination_directory

# Or we could further specify the name of the new copy in the other folder:
cp file_source.ext destination_directory/new_name.ext

# To copy multiple files into a directory, use cp with a list of source files as the first 
# arguments, and the destination directory as the last argument:
cp file1.ext file2.ext destination/directory

## Wildcards **************************************************************************************

# In addition to using exact filenames, we can use special characters like * to select groups of 
# files. These special characters are called wildcards. 

# We can copy all files in the current directory into another:
cp * different/directory

# To copy just the '.txt' files you can use a wildcard with a suffix:
cp *.txt different/directory

# Prefix text can also be used with wildcards. Using w*.txt selects all files in current directory 
# starting with 'w' and ending with '.txt':
cp w*.txt different/directory

## Moving and Renaming ****************************************************************************

# Moving is similar to copying in its usage, except moving a file does so without making a copy.

# To move a file into a directory:
mv old/path/to/file.ext new/path/to/file.ext

# To move multiple files into a directory, list the source files first followed by the destination 
# directory:
mv file1.ext file2.ext file3.ext destination/directory

# The command can also be used to rename a file:
mv old_name.ext new_name.ext

## Removing ***************************************************************************************

# To delete a file:
rm file_name.ext

# There is a recursive option to delete a directory and all of its subdirectories:
rm -r directory_name

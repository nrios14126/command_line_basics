
:: #### Manipulation ##############################################################################

:: ## Options *************************************************************************************

:: We can use the command line to copy, move, and remove files and directories.

:: When using commands, we can attach options to modify the behavior of the commands.

:: This will list all contents of a directory in long format, including the owners of the 
:: file/directory:
dir /q

:: This will order files and directories by the time they were last modified (removing the minus 
:: will reverse the order):
dir /o-d

:: The /q option lists files and directories as a table. There are five columns listed in the 
:: table:
::     1. The date and time that the file was last modified.
::     2. Indication whether it is a file or a directory. 
::     3. The size of the file in bytes (if a file)
::     4. The username of the file's owner. 
::     5. The name of the file or directory.

:: In addition to using each option separately, like dir /q or dir /t, mulitple options can be used 
:: together:
dir /q /o

:: ## Displaying and Copying **********************************************************************

:: The type command outputs the contents of a specified file:
type file_name.ext

:: This is a useful command for peeking at files without opening them, and confirming the result of 
:: other commands that change the contents of files. 

:: The cp command copies files or directories:
copy file_name.ext copy_name.ext

:: We could also copy a file to a destination directory (keeps the same name):
copy file_source.ext destination_directory

:: Or we could further specify the name of the new copy in the other folder:
copy file_source.ext destination_directory\new_name.ext

:: To copy multiple files into a directory, use cp with a list of source files as the first 
:: arguments, and the destination directory as the last argument:
copy file1.ext file2.ext destination\directory

:: ## Wildcards ***********************************************************************************

:: In addition to using exact filenames, we can use special characters like * to select groups of 
:: files. These special characters are called wildcards. 

:: We can copy all files in the current directory into another:
copy * different\directory

:: To copy just the '.txt' files you can use a wildcard with a suffix:
copy *.txt different\directory

:: Prefix text can also be used with wildcards. Using w*.txt selectsall files in current directory 
:: starting with 'w' and ending with '.txt':
copy w*.txt different\directory

:: ## Moving and Renaming *************************************************************************

:: Moving is similar to copying in its usage, except moving a file does so without making a copy.

:: To move a file into a directory:
move old\path\to\file.ext new\path\to\file.ext

:: To move multiple files into a directory, list the source files first followed by the destination 
:: directory:
move file1.ext file2.ext file3.ext destination\directory

:: The command can also be used to rename a file:
move old_name.ext new_name.ext

:: ## Removing ************************************************************************************

:: To delete a file:
del file_name.ext

:: There is a recursive option to delete a directory and all of its subdirectories:
rmdir directory_name /s

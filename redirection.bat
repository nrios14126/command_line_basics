
:: #### Redirection ###############################################################################

:: ## Introduction ********************************************************************************

:: Up until now, we've run commands and received a stream of output in the terminal. Now we'll 
:: focus on input and output redirection.

:: Through redirection you can redirect the input and output of a command to and from other files 
:: and programs, and chain commands together in a pipeline. 

:: The echo command accepts a string as standard input, and echoes the string back to the terminal 
:: as standard output:
echo Hello World

:: 1. Standard Input: aka stdin, is information inputted into the terminal
::    through the keyboard or other input device.
:: 2. Standard Output: aka stdout, is the information outputted after a
::    process is run.
:: 3. Standard Error: aka stderr, is an error message outputted by a 
::    failed process run. 

:: ## Redirection *********************************************************************************

:: The > operator redirects the standard output to a file. 
echo Hello World > hello_world.txt

:: The > operator takes the standard output of the command on the left and redirects it to the file 
:: on the right:
type deserts.txt > forests.txt

:: Note that > overwrites all original content in forests.txt with the output of the cat 
:: deserts.txt command.

:: The >> operator takes standard output of the command on the left and appends it to the file on 
:: the right (therfore does not overwrite like > does):
type deserts.txt >> forests.txt

:: The < command takes the standard input from the file on the right and inputs it into the command 
:: on the left. It is important to know that input can be redirected:
rem same as 'type lakes.txt'
type < lakes.txt  

:: The | operator takes the standard output of the command on the left, and pipes it as standard 
:: input to the command on the right. You can think of it as "command to command" rediretion.

:: The sort command takes the standard input and orders it alphabetically for the standard output 
:: (it doesn't change the file itself):
sort continents.txt

:: Below, you can take the standard output from one command, pipe it to sort, then redirect that to 
:: a file:
type glaciers.txt | sort > sorted_glaciers.txt

:: The find command ("global regular expression print") searches files for lines that match a 
:: pattern and then returns the results. By default it is case sensitive:
find "America" continents.txt

:: The above command searched for anything that matched "America" in continents.txt.

:: To conduct a case insensitive search:
find /i "America" continents.txt

:: If you are familiar with regular expressions, you can also use regular expressions to search for 
:: patterns in files. 

:: To search all files in a directory and output filenames and lines containing matched results:
find /i "Arctic" \home\ccuser\workspace\geography\*
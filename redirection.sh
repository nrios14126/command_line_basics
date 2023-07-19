
#### Redirection ##################################################################################

## Introduction ***********************************************************************************

# Up until now, we've run commands and received a stream of output in the terminal. Now we'll focus 
# on input and output redirection.

# Through redirection you can redirect the input and output of a command to and from other files 
# and programs, and chain commands together in a pipeline. 

# The echo command accepts a string as standard input, and echoes the string back to the terminal 
# as standard output:
echo "Hello World"

# 1. Standard Input: aka stdin, is information inputted into the terminal
#    through the keyboard or other input device.
# 2. Standard Output: aka stdout, is the information outputted after a
#    process is run.
# 3. Standard Error: aka stderr, is an error message outputted by a 
#    failed process run. 

## Redirection ************************************************************************************

# The > operator redirects the standard output to a file:
echo "Hello World" > hello_world.txt

# As a reminder, the cat command outputs the contents of a file to the terminal, so with:
cat hello_world.txt

# The > operator takes the standard output of the command on the left and redirects it to the file 
# on the right:
cat deserts.txt > forests.txt

# Note that > overwrites all original content in forests.txt with the output of the cat deserts.txt 
# command.

# The >> operator takes standard output of the command on the left and appends it to the file on 
# the right (therfore does not overwrite like > does):
cat deserts.txt >> forests.txt

# The < command takes the standard input from the file on the right and inputs it into the command 
# on the left. It is important to know that input can be redirected:
cat < lakes.txt    # same as 'cat lakes.txt'

# The | operator takes the standard output of the command on the left, and pipes it as standard 
# input to the command on the right. You can think of it as "command to command" rediretion.

# To count the words in a file, for example, we could use:
cat volcanoes.txt | wc 

# Multiple pipes can be chained together:
cat volcanoes.txt | wc | cat > count.txt

# The sort command takes the standard input and orders it alphabetically for the standard output 
# (it doesn't change the file itself):
sort continents.txt

# Below, you can take the standard output from one command, pipe it to sort, then redirect that to 
# a file:
cat glaciers.txt | sort > sorted_glaciers.txt

# The uniq command filters out adjacent, duplicate lines in a file:
uniq deserts.txt

# A more effective way to use uniq is to call sort to alphabetize a file, and then pipe the 
# standard output to uniq:
sort deserts.txt | uniq > uniq_deserts.txt

# The grep command ("global regular expression print") searches files for lines that match a 
# pattern and then returns the results. By default it is case sensitive:
grep America continents.txt

# The above command searched for anything that matched "America" in continents.txt.

# To conduct a case insensitive search:
grep -i America continents.txt

# If you are familiar with regular expressions, you can also use regular expressions to search for 
# patterns in files. 

# To search all files in a directory and output filenames and lines containing matched results:
grep -R Arctic /home/ccuser/workspace/geography

# The -R option stands for "recursive". To display the same results but without the lines (just the 
# filenames):
grep -Rl Arctic /home/ccuser/workspace/geography

# The -l option stands for "files with matches".

# The sed command ("stream editor") accepts standard input and modifies it based on an expression, 
# before displaying it as output data. It is similar to "find and replace":
sed 's/snow/rain/' forests.txt

# The expression 's/snow/rain':
#     's' stands for "substitution". It is always used when using sed for substitution.
#     'snow' is the search string, or the text to find.
#     'rain' the replacement string, or the text to add in place.

# In this case, sed searches forests.txt for the word "snow" and replaces it with "rain". 
# Importantly, the above command will only replace the first instance of "snow" on a line. 

# If you wish to replace all instances of "snow" in each line, use the option:
sed 's/snow/rain/g' forests.txt

# The above command uses the 'g' expression, meaning "global".

# The command sed will only rewrite the command line output and the actual file won't be changed. 
# In order to rewrite the actual file, we'll need to use -i:
sed -i 's/snow/rain/g' forests.txt

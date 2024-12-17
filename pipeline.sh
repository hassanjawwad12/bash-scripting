<<'COMMENT' 
Imagine you quickly want to know the number of entries in a directory, you can use a pipe to redirect 
the output of the ls command to the wc command with option -l:

ls / | wc -l

Then you want to see only the first 10 results:

ls / | head

Note: head outputs the first 10 lines by default, use option -n to change this behavior

Grep searches for patterns in each file. Patterns is one or more patterns separated by newline characters, 
and grep prints each line that matches a pattern.Typically patterns should be quoted when grep is 
used in a shell command.

ls / | grep  # This will grab any line/file that has a matching pattern in it

COMMENT

#!/bin/bash

# Count the number of processors from /proc/cpuinfo
#num_processors=$(grep -c "^processor" /proc/cpuinfo)

#If we are using MAC then 
num_processors=$(sysctl -n hw.ncpu)

#num_processors=$(sysctl -a | grep -E '^hw.ncpu:' | awk '{print $2}')


# Print the result
echo "Number of processors: $num_processors"


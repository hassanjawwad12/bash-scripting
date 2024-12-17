<<'COMMENT'
$0 - The filename of the current script.|
$n - The Nth argument passed to script was invoked or function was called.|
$# - The number of argument passed to script or function.|
$@ - All arguments passed to script or function.|
$* - All arguments passed to script or function.|
$? - The exit status of the last command executed.|
$$ - The process ID of the current shell. For shell scripts, this is the process ID under which they are executing.|
$! - The process number of the last background command.|

Some of the common signal types you can trap:
SIGINT: user sends an interrupt signal (Ctrl + C)
SIGQUIT: user sends a quit signal (Ctrl + D)
SIGFPE: attempted an illegal mathematical operation

COMMENT

#!/bin/bash

echo "Script Name: $0"
function func {
    for var in $*
    do
        let i=i+1
        echo "The \$${i} argument is: ${var}"
    done
    echo "Total count of arguments: $#"
}

trap "echo Booh!" SIGINT SIGTERM
echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true        
do
    sleep 60       
done


#use "-e" to test if file exist
#!/bin/bash
filename="sample.md"
if [ -e "$filename" ]; then
    echo "$filename exists as a file"
fi

#use "-d" to test if directory exists
directory_name="bash-scripting"
if [ -d "$directory_name" ]; then
    echo "$directory_name exists as a directory"
fi

#use "-r" to test if file has read permission for the user running the script/test
filename="sample.md"
if [ ! -f "$filename" ]; then
    touch "$filename"
fi
if [ -r "$filename" ]; then
    echo "you are allowed to read $filename"
else
    echo "you are not allowed to read $filename"
fi
#!/bin/bash

file="testfile.txt"

touch "$file"

if [[ -b "$file" ]]; then
    echo "$file is a block special file."
else
    echo "$file is not a block special file."
fi

if [[ -c "$file" ]]; then
    echo "$file is a character special file."
else
    echo "$file is not a character special file."
fi

if [[ -d "$file" ]]; then
    echo "$file is a directory."
else
    echo "$file is not a directory."
fi

if [[ -e "$file" ]]; then
    echo "$file exists."
else
    echo "$file does not exist."
fi

if [[ -r "$file" ]]; then
    echo "$file has read access."
else
    echo "$file does not have read access."
fi

if [[ -w "$file" ]]; then
    echo "$file has write access."
else
    echo "$file does not have write access."
fi

if [[ -x "$file" ]]; then
    echo "$file has execute access."
else
    echo "$file does not have execute access."
fi

if [[ -s "$file" ]]; then
    echo "$file has a size greater than 0."
else
    echo "$file is empty or has a size of 0."
fi

rm "$file"
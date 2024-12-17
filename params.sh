#!/bin/bash

# Function to display usage/help
usage() {
  echo "Usage: $0 [-n NAME] [-a AGE] [-h]"
  echo "  -n NAME   Specify the name."
  echo "  -a AGE    Specify the age."
  echo "  -h        Display this help message."
  exit 1
}

# Initialize variables
NAME=""
AGE=""

# Parse input parameters using getopts
while getopts "n:a:h" opt; do
  case $opt in
    n) NAME=$OPTARG ;;  # Assign value of -n to NAME
    a) AGE=$OPTARG ;;   # Assign value of -a to AGE
    h) usage ;;         # Display help and exit
    *) usage ;;         # Display help for invalid options
  esac
done

# Shift processed options to handle positional arguments
shift $((OPTIND - 1))

# Check if required arguments are provided
if [[ -z $NAME || -z $AGE ]]; then
  echo "Error: Both -n (name) and -a (age) are required."
  usage
fi

# Print the parsed inputs
echo "Name: $NAME"
echo "Age: $AGE"

# Handle remaining positional arguments
if [[ $# -gt 0 ]]; then
  echo "Additional arguments: $@"
fi

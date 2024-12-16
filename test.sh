#!/bin/bash
# Text to the right of a '#' is treated as a comment - below is the shell command
echo 'Goodbye, World!'

#string variable BIRTHDATE
BIRTHDATE="Aug 4, 2002"

#integer variable Presents
Presents=10

# Print the variables to verify
echo "BIRTHDATE: $BIRTHDATE"
echo "Presents: $Presents"

#-j: Prevents the date command from modifying the system date.
#-f "%b %d, %Y": Specifies the input format of the date string, matching BIRTHDATE.
#"+%A": Outputs the full weekday name.
BIRTHDAY=$(date -j -f "%b %d, %Y" "$BIRTHDATE" "+%A")
echo "Birthday: $BIRTHDAY"

PRICE_PER_APPLE=5
echo "The price of an Apple today is: $PRICE_PER_APPLE"

MyFirstLetters=ABC
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ"

greeting='Hello        world!'
echo $greeting" now with spaces: $greeting"

# Check if arguments are passed
if [ $# -eq 0 ]; then
  echo "No arguments provided!"
  exit 1
fi

# Loop through each argument and print its length
for arg in "$@"; do
  echo "Argument: $arg, Length: ${#arg}"
done


#!/bin/bash

#array operations
# We declare 2 arrays as we are told
numbers=()
strings=()
NAMES=("John" "Jane" "Jim")

numbers+=(1 2 3)
strings+=("hello" "world")

NumberOfNames=${#NAMES[@]}
second_name=${NAMES[1]}

echo "Numbers array: ${numbers[@]}"
echo "Strings array: ${strings[@]}"
echo "Number of names: $NumberOfNames"
echo "Second name: $second_name"


#arithmatic operations
# Prices of individual items
cost_pineapple=5      # Cost of one pineapple
cost_banana=2         # Cost of one banana
cost_watermelon=7     # Cost of one watermelon
cost_basket=1         # Cost of the basket itself

# Quantities of items
num_pineapples=1
num_bananas=2
num_watermelons=3

# Calculate the total cost
TOTAL=$((num_pineapples * cost_pineapple + num_bananas * cost_banana + num_watermelons * cost_watermelon + cost_basket))

# Print the total cost
echo "The total cost of the fruit basket is: \$${TOTAL}"


#string manipulation

# Step 1: Assign the original saying to the variable ISAY
ISAY="You know you are finding snow when your shoes are wet with snow."

# Replace the first occurrence of 'snow' with 'foot'
ISAY=${ISAY/snow/foot}

# Delete the second occurrence of 'snow'
ISAY=$(echo "$ISAY" | sed 's/snow//2')

# Replace 'finding' with 'getting'
ISAY=${ISAY//finding/getting}

# Delete all characters following 'wet'
index=$(echo "$ISAY" | grep -b -o 'wet' | head -n 1 | cut -d: -f1)
ISAY=${ISAY:0:$((index + 3))}

#Print the final modified saying
echo "Modified saying: $ISAY"

#Decision making 
NAME="George"
if [ "$NAME" = "John" ]; then
  echo "John Lennon"
elif [ "$NAME" = "George" ]; then
  echo "George Harrison"
else
  echo "This leaves us with Paul and Ringo"
fi


#comparison    Evaluated to true when
#$a -lt $b    $a < $b
#$a -gt $b    $a > $b
#$a -le $b    $a <= $b
#$a -ge $b    $a >= $b
#$a -eq $b    $a is equal to $b
#$a -ne $b    $a is not equal to $b

#if [[ $VAR_A[0] -eq 1 && ($VAR_B = "bee" || $VAR_T = "tee") ]] ; then
#    command...
#fi

mycase=1
case $mycase in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected phyton";;
    4) echo "You selected c++";;
    5) exit
esac

COUNT=0
while [ $COUNT -ge 0 ]; do
  echo "Value of COUNT is: $COUNT"
  COUNT=$((COUNT+1))
  if [ $COUNT -ge 5 ] ; then
    break
  fi
done

# Prints out only odd numbers 
COUNTN=0
while [ $COUNTN -lt 23 ]; do
  COUNTN=$((COUNTN+1))
  if [ $(($COUNTN % 2)) != 0 ] ; then
    continue
  fi
  echo $COUNTN
done

#array comparisons
# Declare the arrays
a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

# Array to hold the common elements
common=()

# Find common elements
for i in "${a[@]}"; do
  if [[ " ${b[@]} " =~ " $i " ]] && [[ " ${c[@]} " =~ " $i " ]]; then
    common+=("$i")
  fi
done

# Print the common elements
echo "Common elements: ${common[@]}"


#functions 
# Define the ENGLISH_CALC function
ENGLISH_CALC() {
  local num1=$1
  local operator=$2
  local num2=$3
  local result

  # Perform the calculation based on the operator
  case $operator in
    plus)
      result=$((num1 + num2))
      echo "$num1 + $num2 = $result"
      ;;
    minus)
      result=$((num1 - num2))
      echo "$num1 - $num2 = $result"
      ;;
    times)
      result=$((num1 * num2))
      echo "$num1 * $num2 = $result"
      ;;
    *)
      echo "Invalid operator! Use 'plus', 'minus', or 'times'."
      ;;
  esac
}

ENGLISH_CALC 3 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6




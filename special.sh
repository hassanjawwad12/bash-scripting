#!/bin/bash
# Process data.txt to meet requirements
grep "Finance" data.txt | \
sort -t ',' -k4,4nr | \
sed 's/Finance/Accounts/' | \
awk -F ',' '{print $2 " earns $" $4 " in " $3 " department"}'

<<'COMMENT'

 `grep "Finance" data.txt`
- Purpose: Filters lines from `data.txt` that contain the word `"Finance"`.

`sort -t ',' -k4,4nr`
- Purpose: Sorts the filtered lines by the 4th column (Salary) in descending numerical order.
- How it works:
  - `-t ','`: Specifies the delimiter as a comma (`,`). This tells `sort` how to split each line into columns.
  - `-k4,4`: Tells `sort` to use the 4th column for sorting.
  - `nr`: Sorts numerically (`n`) in reverse order (`r`), so the highest salary comes first.

`sed 's/Finance/Accounts/'`
- Purpose: Replaces the first occurrence of `"Finance"` with `"Accounts"` in each line.
- How it works:
  - `sed`: A stream editor that processes text line by line.
  - `'s/Finance/Accounts/'`: The `s` command (substitute) replaces `"Finance"` with `"Accounts"`. Only the first occurrence on each line is replaced.


`awk -F ',' '{print $2 " earns $" $4 " in " $3 " department"}'`
- Purpose: Formats and prints the output in a human-readable way.
- How it works:
  - `awk`: A powerful text-processing tool.
  - `-F ','`: Sets the field separator (delimiter) to a comma (`,`).
  - `'{print $2 " earns $" $4 " in " $3 " department"}'`: Specifies the format for the output.
    - `$2`: The second field (Name).
    - `$4`: The fourth field (Salary).
    - `$3`: The third field (Department).

1. **`grep`**: Extracts only the lines containing `"Finance"`.
2. **`sort`**: Orders these lines by salary in descending order.
3. **`sed`**: Replaces `"Finance"` with `"Accounts"`.
4. **`awk`**: Formats and prints the data in the desired readable format.

COMMENT 



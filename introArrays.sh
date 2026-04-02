#!/bin/bash
declare -a myValues
myValues=(1 2 3 4 56 7)

# this prints only the first element of the array
echo ${myValues}


# print all on one line
echo "${myValues[@]}"

# print all on one line another method
echo "${myValues[*]}"

# print elements on separate lines 

# using printf
printf "%s\n" "${myValues[@]}"

# using a for loop 
for item in "${myValues[@]}"; do
    echo "$item"
done

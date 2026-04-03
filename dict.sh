#!/bin/bash

# bash dictionaries are the same as bash array variables but these are useful to store values based on custom keys instead of index values
# these are also called as associative arrays/hash tables
# declare -A myDict
# myDict=([name]=docker [version]=1.13.1)

declare -A myDict
myDict=([toolName]=docker [toolVer]=1.13.1)

# print dictionary values
echo "${myDict[@]}"

# prints dictionary keys 
echo "${!myDict[@]}"


myDict[toolType]=container
echo "${myDict[@]}"

echo "${myDict[toolName]}"

unset myDict[toolVer]

echo "${myDict[@]}"

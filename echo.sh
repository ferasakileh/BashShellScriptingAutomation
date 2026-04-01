#!/bin/bash
echo "This is a file that contains a bunch of tests of the echo"

myShell=Bash
myValue=145

echo ${myValue}
echo ${myShell}

echo ${myValue}${myShell}

myCmdOutput=$(date) 
echo ${myCmdOutput}
echo ${date}

echo "*"

echo *
echo 'This is bash shell scripting'
echo "This is bash shell scripting"


hostname
ls
pwd
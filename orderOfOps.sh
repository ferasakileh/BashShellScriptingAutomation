#!/bin/bash

# waterfall
# y = mx+c
# m=2, x=4 c=2

# these have to be defined before they are used or else all of it will default to 0
m=2
x=4
c=2
y=$((m*x+c))

echo $y
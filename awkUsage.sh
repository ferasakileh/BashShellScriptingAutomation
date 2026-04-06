#!/bin/bash
# Print the first and third columns of a file
awk '{print $1, $3}' data.txt

search_term="ERROR"

# Use -v to pass $search_term to the awk variable 'patt'
awk -v patt="$search_term" '$0 ~ patt {print $0}' logfile.log
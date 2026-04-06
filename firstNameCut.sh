#!/bin/bash
FULL_NAME="Feras Akileh"
# Extract the first word using a space as the delimiter
FIRST_NAME=$(echo "$FULL_NAME" | cut -d ' ' -f 1)
echo "Hello, $FIRST_NAME"

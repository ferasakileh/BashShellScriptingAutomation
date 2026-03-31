#!/bin/bash

# THERE ARE MANY DIFFERENT WAYS TO PROVIDE INPUTS FOR VARIABLES IN BASH SHELL SCRIPTS

    # Directly defining variable value in scripts themselves
    # Using Read command
    # Using Source Concept
    # Using export command
    # Using commnand line argument
    # Using Options with the help of while loop

echo "Enter your name: "
read name
echo "Hello, $name!"
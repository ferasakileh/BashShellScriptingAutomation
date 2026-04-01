#!/bin/bash

# This is a script to practice playing around with formatting 

echo "${dockerVersion}"

dockerVersion=$(docker --version | cut -d '' -f3 | tr -d ',')

echo "${dockerVersion}"

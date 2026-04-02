#!/bin/bash
filepath="/home/user/data/config.sh"
dir_path=$(dirname "$filepath")
echo "$dir_path"

base_path=$(basename "$filepath")
echo "$base_path"
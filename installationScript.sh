#!/bin/bash

run_cmd() {
    echo "Running: $1"
    if ! $1; then
        echo "Error running $1. Exiting"
        exit 1
    fi
}

echo "Starting Ansible installation script..."

if ! command -v python3 &> /dev/null
then
    echo "Python 3 not found. Please install python 3 first."
    exit 1
fi

if ! command -v pip3 &> /dev/null
then
    echo "pip3 not found. Attempting to install system-specific python3-pip package."
    if command -v apt &> /dev/null; then
        run_cmd "sudo apt update"
        run_cmd "sudo apt install -y python3-pip"
    elif command -v yum &> /dev/null; then
        run_cmd "sudo yum install -y python3-pip"
    elif command -v dnf &> /dev/null; then
        run_cmd "sudo dnf install -y python3-pip"
    else
        echo "Unsupported package manager. Please install pip3 manually."
        exit 1
    fi
fi

echo "Installing Ansible with pip3..."
run_cmd "pip3 install --user ansible"

# Verify installation
if command -v ansible &> /dev/null
then
    echo "Ansible installed successfully!"
    ansible --version
else
    echo "Ansible installation failed. Please check the output above for errors."
fi
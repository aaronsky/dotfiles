#!/bin/sh

# Check if this is Linux
if [ "$(uname -s)" != "Linux" ]; then
    fatal "This script cannot be run on any non-Linux system"
fi

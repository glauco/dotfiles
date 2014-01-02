#!/bin/sh

# Checks if the system has Ruby installed
type ruby > /dev/null 2>&1 || { echo >&2 "I require ruby but it's not installed. Aborting."; exit 1; }

# Installs Homebrew, if necessary
if hash brew 2> /dev/null; then
    echo >&2 "Homebrew is already installed";
else
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)";
fi

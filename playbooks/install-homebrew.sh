#!/bin/sh

if test ! $(which brew)
then
  echo '[ Installing Homebrew ]'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if test $(which brew)
then
  echo '[ Updating Homebrew Package List ]'
  brew update
fi

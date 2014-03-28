#!/bin/sh

grep -c 2.0 <(rvm list)

if ! $?
then
  echo '[ Installing Ruby 2.0 using RVM ]'
  rvm install 2.0
  rvm use --default 2.0
else
  echo '[ Ruby 2.0 is already installed ]'
fi

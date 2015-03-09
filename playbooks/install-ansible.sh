#!/bin/sh

if test ! $(which ansible)
then
  echo '[ Installing Ansible ]'
  brew install ansible
fi

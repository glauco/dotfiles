#!/bin/sh

if test ! $(which ansible)
then
  echo '[ Updating Homebrew Package List ]'  
  brew update

  echo '[ Installing Ansible ]'
  brew install ansible
fi

if test $(which ansible)
then
  echo '[ Running Ansible Playbook ]'
  ansible-playbook ansible/playbook.yml -i ansible/hosts
fi

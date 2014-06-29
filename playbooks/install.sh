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
  ansible-playbook -i playbooks/inventory playbooks/macosx.yml
fi

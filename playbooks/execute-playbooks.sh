#!/bin/sh

if test $(which ansible)
then
  echo '[ Running Ansible Playbook ]'
  ansible-playbook -i playbooks/inventory playbooks/duck-of-doom.yml
fi

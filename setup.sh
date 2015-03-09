#!/bin/sh

sh playbooks/install-homebrew.sh
sh playbooks/install-ansible.sh
sh playbooks/grant-execution-permission.sh
sh playbooks/execute-playbooks.sh

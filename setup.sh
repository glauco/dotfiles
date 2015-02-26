#!/bin/sh

function install_homebrew() {
  if test ! $(which brew)
  then
    echo '[ Installing Homebrew ]'
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    echo '[ Homebrew is already installed ]' 
  fi
}

function install_ansible() {
  if test ! $(which ansible)
  then
    echo '[ Installing Ansible ]'
    brew update && brew install ansible;
  else
    echo '[ Ansible is already installed ]'
  fi
}

function run_ansible() {
  sh playbooks/install.sh
}

function grant_execution_permissions() {
  sh -c "chmod -x playbooks/inventory"
}

export -f install_homebrew
export -f install_ansible
export -f grant_execution_permissions
export -f run_ansible

install_homebrew
install_ansible
grant_execution_permissions
run_ansible

unset run_ansible
unset grant_execution_permissions
unset install_ansible
unset install_homebrew

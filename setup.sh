#!/bin/sh

function install_homebrew() {
  if test ! $(which brew)
  then
    echo '[ Installing Homebrew ]'
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
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

export -f install_homebrew
export -f install_ansible
export -f run_ansible

install_homebrew
install_ansible
run_ansible

unset run_ansible
unset install_ansible
unset install_homebrew

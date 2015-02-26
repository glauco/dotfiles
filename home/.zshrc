#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# By default, there is a 0.4 second delay after you hit the <ESC>.
# Reducing this delay to 0.1 seconds.
export KEYTIMEOUT=1

# Docker settings
export DOCKER_HOST=tcp://192.168.59.103:2375

# aliases
alias p=pushd
alias o=popd

export COMMANDER_SERVER="commander.gapinc.dev"

PATH="$PATH:/opt/electriccloud/electriccommander/bin"
PATH="/usr/local/bin:$PATH"
PATH="$PATH:$HOME/.rvm/bin"
PATH="$HOME/.jenv/bin:$PATH"
MAVEN_OPTS=-Xmx1024m

set TERM="xterm"

bindkey -v

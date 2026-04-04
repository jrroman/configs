# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export EDITOR=vim
export BROWSER=firefox-devedition

# nvim
PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# python / pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv virtualenv-init -)"

# go / goenv
export GOENV_ROOT="$HOME/.goenv"
export GOPATH="$HOME/go/1.24.6"
export PATH="$GOENV_ROOT/bin:$GOPATH/bin:$PATH"
eval "$(goenv init -)"

# rust / cargo
. "$HOME/.cargo/env"

# zig
export PATH="$HOME/.local/bin/zig:$PATH"

# node / nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "/home/jr/.ghcup/env" ] && . "/home/jr/.ghcup/env" # ghcup-env

# deno
. "/home/jr/.deno/env"

# java
export JAVA_HOME="/usr/lib/jvm/java-1.21.0-openjdk-amd64/"

# pulumi
export PATH="$HOME/.pulumi/bin:$PATH"

# firefox developer edition
export PATH="/usr/local/bin/firefox:$PATH"

# Aliases
alias gs="git status --branch --short"
alias gc="git commit -v"
alias ga="git add"
alias gl="git log --oneline --decorate --graph"
alias k="kubectl"
alias vim="nvim"

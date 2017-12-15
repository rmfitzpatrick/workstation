# .bashrc

# User specific aliases and functions
export TERM=xterm-256color

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -laph'
alias f8='flake8'

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# VIRTUALENVWRAPPER
export VIRTUALENVWRAPPER_PYTHON=`which python2`
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME=$HOME/python_projects
source /usr/bin/virtualenvwrapper.sh


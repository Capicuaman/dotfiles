# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# ##########################
# Capicuaman's Smoking .bashrc file  
# ##########################

neofetch

#(1) tmux exists on the system, (2) we're in an interactive shell, and (3) tmux doesn't try to run within itself:
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# find
# dotfiles base git repository
    alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 

# Add NVM to PATH
export NVM_DIR="/home/capicuaman/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash


# set “vim” as my default editor in UNIX 

#### export VISUAL=vim 
#### export EDITOR="$VISUAL"   

set -o vi


# ##########################
# Aliases
# ##########################

# ##########################
# File traversing
# ##########################

alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Lists
# ls -a  

# for human readable output
alias l="ls"
alias ls="ls -F --color=auto"
alias df='df -h'
alias du='du -h'
alias minibash='start "" "%SYSTEMDRIVE%\Program Files\Git\bin\sh.exe" --login'
# history
# See your most-used commands with history - make aliases for them

# ##########################
# Git
# ##########################
# status
alias gs='git status'
# ls = ls-files

# commit
alias gcam='git commit -am '
alias gcm='git commit -m '

# add
alias ga.='git add . '
alias ga='git add '

# branch

# push
alias gp='git push origin master'
alias gph='git push heroku master'
# commit -m
alias gco='git checkout '
# checkout
# df = diff

# mg = merge
# ph = push -u
# reset
# cherry Pick
# rebase

# sh = stash
# sha = stash apply
# shp = stash pop
# shl = stash list
# 

# ##########################
# Docker 
# ##########################

alias dk-lc='docker ps -l' # List last Docker container
alias dk-lcid='docker ps -l -q' # List last Docker container ID
# alias dk-lcip="docker inspect `dklcid` | grep IPAddress | cut -d '\"' -f 4" # Get IP of last Docker container
alias dk-ps='docker ps' # List running Docker containers
alias dk-psa='docker ps -a' # List all Docker containers
alias dk-i='docker images' # List Docker images
alias dk-rmac='docker rm $(docker ps -a -q)' # Delete all Docker containers
alias dk-rmlc='docker-remove-most-recent-container' # Delete most recent (i.e., last) Docker container
alias dk-rmui='docker rmi $(docker images | grep "^<none>" | awk "{     print $3}")' # Delete all untagged Docker images
alias dk-rmli='docker-remove-most-recent-image' # Delete most recent (i.e., last) Docker image
alias dk-rmi='docker-remove-images' # Delete images for supplied IDs or all if no IDs are passed as arguments
alias dk-ideps='docker-image-dependencies' # Output a graph of image dependencies using Graphiz
alias dk-re='docker-runtime-environment' # List environmental variables of the supplied image ID
alias dk-elc='docker exec -it `dklcid` bash' # Enter last container (works with Docker 1.3 and above)}

# ##########################
# Build Processes
# ##########################
#GULP
# Grunt
# Bower
# Live-server
# Harp.js

# ##########################
# Languages
# ##########################
# Ruby
# Javascript
# HTML
# CSS
# PHP

# ##########################
# CLI TOOLS
# ##########################
# http://lifehacker.com/399468/top-10-command-line-tools

# FFmpeg
# http://ffmpeg.org/documentation.html 
# http://www.coolutils.com/CommandLine/TotalAudioConverter

# ImageMagick

# Force an action with sudo !! ("bang bang")

# ##########################
# Create
# ##########################
# Touch
# >info.txt
# Create whole directory trees with mkdir

# ##########################
# Locate
# ##########################
# grep
# Filter huge lists 
# https://www.eriwen.com/tools/grep-is-a-beautiful-tool/ 

# find
#  Get way beyond system searching with find

# type

# info - pinfo

# ##########################
# RTFM - Read The Fucking Manual
# ##########################
# whatis — Display a summary of a command (rather than the entire manual)
# apropos — Display a list of commands that pertain to (are apropos to) a keyword
# whereis — Display information about the location of a command: the executable, the source code (if any), and the man pages.
# which — Display which version of a command will execute (for when there are two, or more, commands with the same name installed on the system).
# man
# --help -h
# type
# ##########################
# Manage processes
# ##########################
#   top

# ##########################
# Get files
# ##########################
# youtube-dl 

# wget
#  Master wget for powerful file-grabbing
# -c continue
# -m mirror
# recursive download functions
# ##########################
# Backups
# 
# ##########################
# Paycho Folder

# rsyn
# Set up powerful backups with rsync
# http://lifehacker.com/196122/geek-to-live--mirror-files-across-systems-with-rsync
# find


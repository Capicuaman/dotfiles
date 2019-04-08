# Linux cookbook - tips an techniques for everyday use

# PART ONE: Working with Linux
# #########
# Chpt 2 Introduction
# Chpt 3 - What every Linux User Knows
# Chpt 4 - The Shell
# Chpt 5 - The X Window system

alias reload="source ~/.bashrc"
# PART TWO: Files
# #########
# Chpt 6 - Files and Directories
# Chpt 7 - Sharing Files
# Chpt 8 - Finding Files
# Chpt 9 - Managing Files
alias largest='ls -lS'
alias smallest='ls -lSr'
alias number='ls | wc -l'
alias numberall='ls -A | wc -l'


# vim j-k escape with :imap jk <esc>

# Directories
alias smallestdir='du -S . | sort -n'
alias largestdir='du -S . | sort -nr'

# File type and format
# Changing modification time
# splitting file into smaller ones
# Comparing Files
# Compressed Files
# File Archives
# Tracking Revisions to a file


# PART THREE - Text
# #########
# Chpt 10 - Viewing Text

# Chpt 11 - Text editing
# Chpt 12 - Grammar and Reference
# Chpt 13 - Analyzing Text
# Chpt 14 - Formatting Text
# Chpt 15 - Searching Text
# Chpt 16 - Typesetting and Wordprocessing
# Chpt 17 - Fonts

# PART FOUR - Images
# #########
# Chpt 18 - Viewing Images
# Chpt 19 - Editing Images
# Chpt 20 - Importing Images
# Chpt 21 - PostScript

# PART FIVE - Sound
# #########
# Chpt 22 - Sound Files
# Chpt 23 - Audio Compact Discs
# Chpt 24 - Editing Sound Files

# PART SIX - Productivity
# #########
# Chpt 25 - Disk Storage
# Chpt 26 - Printing
# Chpt 27 - Cross Platform Conversions
# Chpt 28 - Reminders
# Chpt 29 -

# PART SEVEN - Networking
# #########
# Chpt 30 - Communications
# Chpt 31 - Email
# Chpt 32 - The World Wide Web
# Chpt 33 - Other internet services


# Introduction
# pwd
# cd
# ls
# mkdir, rmdir
# echo
# cat, zcat, tac
# cp
# mv
# rm
# shred
# man
# head, tail
# less, zless, more
# grep, egrep
alias grep='grep --color  '

# which
# chmod
# chown
# history
# clear
# logout, exit
# sudo
# su
# wc
# sort
# ssh
# ssh-keygen
# scp
# rsync
# source, export
# ln
# readlink
# sleep
# ps, pstree, jobs, bg, fg, kill, top, htop
# nohup
# time
# seq
# cut
# paste
# awk
# sed
# date, cal
# gzip, gunzip, bzip2, bunzip2
# tar
# uniq
# dirname, basename
# set, unset
# env
# uname
# df, du
# bind
# alias, unalias
# column
# find
# touch
# diff, comm
# join
# md5, md5sum
# tr
# od
# split
# nano, emacs, vim
# tree
# screen
# tmux
# yes
# nl
# whoami
# groups
# who, w
# hostname
# finger
# read
# tee
# shopt
# true, false
# shift
# g++
# xargs
# crontab
# type
# info
# apropos
# fold
# rev
# mount
# mktemp
# watch
# perl, python
# ping
# dig
# ifconfig
# wget
# elinks, curl
# apt-get, brew, yum
# display, convert, identify
# gpg2
# datamash
# virtualenv
# lsof
# Bonus: Global Variables in Unix
# Bonus: Network Analysis

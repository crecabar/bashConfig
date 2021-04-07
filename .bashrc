#!/bin/bash

# Color terminal definitions
# Regular Colors
black='\[\033[0;30m\]' # Black
red='\[\033[0;31m\]' # Red
green='\[\033[0;32m\]' # Green
yellow='\[\033[0;33m\]' # Yellow
blue='\[\033[0;34m\]' # Blue
purple='\[\033[0;35m\]' # Purple
cyan='\[\033[0;36m\]' # Cyan
white='\[\033[0;37m\]' # White

# High Intensty
black_hi='\[\033[0;90m\]' # Black
red_hi='\[\033[0;91m\]' # Red
green_hi='\[\033[0;92m\]' # Green
yellow_hi='\[\033[0;93m\]' # Yellow
blue_hi='\[\033[0;94m\]' # Blue
purple_hi='\[\033[0;95m\]' # Purple
cyan_hi='\[\033[0;96m\]' # Cyan
white_hi='\[\033[0;97m\]' # White

# Background
black_bk='\[\033[40m\]' # Black
red_bk='\[\033[41m\]' # Red
green_bk='\[\033[42m\]' # Green
yellow_bk='\[\033[43m\]' # Yellow
blue_bk='\[\033[44m\]' # Blue
purple_bk='\[\033[45m\]' # Purple
cyan_bk='\[\033[46m\]' # Cyan
white_bk='\[\033[47m\]' # White

# High Intensty backgrounds
black_hibk='\[\033[0;100m\]' # Black
red_hibk='\[\033[0;101m\]' # Red
green_hibk='\[\033[0;102m\]' # Green
yellow_hibk='\[\033[0;103m\]' # Yellow
blue_hibk='\[\033[0;104m\]' # Blue
purple_hibk='\[\033[10;95m\]' # Purple
cyan_hibk='\[\033[0;106m\]' # Cyan
white_hibk='\[\033[0;107m\]' # White

#Replace any leading leading 0; with 1; for bold colors
#Replace any leading 0; with 4; to underline

# Define a beautiful prompt
export PS1="\[\033[1;35m\]\u\[\033[0m\]\[\033[1;34m\]@\h\[\033[0m\]:\[\033[1;34m\]\w\[\033[0m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] $ "

# Define some aliases
alias ls='ls -GF'
alias ll='ls -lh'
alias la='ls -a'
alias lla='ll -a'

alias gitLog='git log --pretty=format:"%h %cn: %s" --graph'


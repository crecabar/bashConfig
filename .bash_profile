#!/bin/bash

if [ -e ~/.bashrc ]; then
	. ~/.bashrc
fi

PATH=$PATH:/usr/local/sbin/:/usr/local/opt/python/libexec/bin:${HOME}/.composer/vendor/bin:${HOME}/bin

export PATH

export TMPDIR=/tmp

# function changueJAVA_HOME {
#   case "$1" in
#     7) 
#       export JAVA_HOME=$JAVA7_HOME
#       ;;
#     8)
#       export JAVA_HOME=$JAVA8_HOME
#       ;;
#     *)
#       echo "Java environment not found"
#       ;;
#   esac
# }

alias gitlog='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

function ssh-docker {
  if [ $# -ne 1 ]; then
    echo "Usage: $FUNCNAME <docker container name>"
    return 1
  fi
  container=$1
  echo "docker container exec -it $container /bin/bash"
  docker container exec -it $container /bin/bash
}

function clear-running-docker {
  docker rm -vf $(docker ps -a -q)
}

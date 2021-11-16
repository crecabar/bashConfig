#!/bin/bash

if [ -e ~/.bashrc ]; then
	. ~/.bashrc
fi

PATH=$PATH:/usr/local/sbin/:/usr/local/opt/python/libexec/bin:${HOME}/.composer/vendor/bin:${HOME}/bin

export PATH

export TMPDIR=/tmp


export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi

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

#!/bin/bash

if [ -e ~/.bashrc ]; then
	. ~/.bashrc
fi

# Setting some env variables
# ANT_HOME=/usr/local/apache-ant
# export ANT_HOME

# JAVA7_HOME=`/usr/libexec/java_home -v 1.7`
# JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
# export JAVA_HOME=$JAVA8_HOME

#CATALINA_HOME=/Library/Tomcat
#export CATALINA_HOME

# PATH=$PATH:/opt/local/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Applications/CMake.app/Contents/bin:$ANT_HOME/bin:$CATALINA_HOME/bin:${HOME}/.composer/vendor/bin:${HOME}/bin:/opt/Qt/5.4/clang_64/bin

# PATH=$PATH:"/Applications/microchip/xc32/v1.34/bin"
# PATH=$PATH:"/Applications/microchip/xc8/v1.34/bin"
# PATH=$PATH:"/Applications/microchip/xc16/v1.24/bin"

# export PATH

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


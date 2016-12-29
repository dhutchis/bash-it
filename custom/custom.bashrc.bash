# pure theme, plugins: alias-completion, base, less-pretty-cat

export ACCUMULO_DEV_HOME=/home/dhutchis/opt/stack/accumulo-1.7.0
export D4M_HOME=/home/dhutchis/gits/d4m
export GRAPHULO_HOME=~/gits/graphulo
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 #sudo apt-get install openjdk-8-jdk
export PATH=$PATH:/home/dhutchis/opt/apache-maven-3.2.5/bin
export M2_HOME=/home/dhutchis/opt/apache-maven-3.2.5

export STACK_HOME=/home/dhutchis/opt/stack
export HADOOP_HOME=$STACK_HOME/hadoop-2.6.0
export ZOOKEEPER_HOME=$STACK_HOME/zookeeper-3.4.6
export ACCUMULO_HOME=$STACK_HOME/accumulo

alias hadoop='$HADOOP_HOME/bin/hadoop'
alias accumulo='$ACCUMULO_HOME/bin/accumulo'

# CARD KEY GPG SSH
export SSH_AUTH_SOCK=/home/dhutchis/.gnupg/S.gpg-agent.ssh
#eval gpg-agent --daemon --enable-ssh-support
#ps aux | grep gpg-agent | grep -v grep | awk '{print $2}' | xargs kill
#sudo xed /usr/share/upstart/sessions/gpg-agent.conf &
export GPG_TTY=$(tty)
# startup command: ps aux | grep gpg-agent | grep -v grep | awk '{print $2}' | xargs kill; eval gpg-agent --daemon --enable-ssh-support; export SSH_AUTH_SOCK=/home/dhutchis/.gnupg/S.gpg-agent.ssh


#export GOPATH=~/go
#export PATH=$PATH:$GOPATH/bin

# this might mess up other utilities that use grep
#export GREP_OPTIONS='--color=auto'

export EDITOR=emacs #subl
#umask 066

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
#[ -z "$PS1" ] && return
case $- in
    *i*) ;;
      *) return;;
esac




# # set a fancy prompt (non-color, unless we know we "want" color)
# #case "$TERM" in
# #xterm-color)
# #    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# #    ;;
# #*)
# #    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
# #    ;;
# #esac
# # Comment in the above and uncomment this below for a color prompt
# # \W at the end means don't show directory hierarchy, as oppposed to \w.
# PS1='${debian_chroot:+($debian_chroot)}\[\033[00;32m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\W\[\033[00m\]\$ '

# # If this is an xterm set the title to user@host:dir
# case "$TERM" in
# xterm*|rxvt*)
#     PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
#     ;;
# *)
#     ;;
# esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.



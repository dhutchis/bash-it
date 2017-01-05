# pure theme, plugins: alias-completion, base, less-pretty-cat

export ACCUMULO_DEV_HOME=/home/dhutchis/opt/stack/accumulo-1.7.0
export D4M_HOME=/home/dhutchis/gits/d4m
export GRAPHULO_HOME=~/gits/graphulo
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 #sudo apt-get install openjdk-8-jdk
export M2_HOME=/home/dhutchis/opt/apache-maven # link maven bin to user bin

export STACK_HOME=/home/dhutchis/opt/stack # must be defined before uno env
eval "$(/home/dhutchis/gits/uno/bin/uno env --vars)"
export HADOOP_HOME="$HADOOP_PREFIX"
#export HADOOP_HOME=$STACK_HOME/install/hadoop-2.7.3
#export ZOOKEEPER_HOME=$STACK_HOME/zookeeper-3.4.6
#export ACCUMULO_HOME=$STACK_HOME/accumulo

alias hadoop='$HADOOP_HOME/bin/hadoop'
alias accumulo='$ACCUMULO_HOME/bin/accumulo'

# CARD KEY GPG SSH
export SSH_AUTH_SOCK=/home/dhutchis/.gnupg/S.gpg-agent.ssh
#eval gpg-agent --daemon --enable-ssh-support
#ps aux | grep gpg-agent | grep -v grep | awk '{print $2}' | xargs kill
#sudo xed /usr/share/upstart/sessions/gpg-agent.conf &
export GPG_TTY=$(tty)
# startup command: ps aux | grep gpg-agent | grep -v grep | awk '{print $2}' | xargs kill; eval gpg-agent --daemon --enable-ssh-support; export SSH_AUTH_SOCK=/home/dhutchis/.gnupg/S.gpg-agent.ssh
alias fix-ssh="ps aux | grep gpg-agent | grep -v grep | awk '{print \$2}' | xargs kill; eval gpg-agent --daemon --enable-ssh-support; export SSH_AUTH_SOCK=/home/dhutchis/.gnupg/S.gpg-agent.ssh"

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

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" \|| eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi




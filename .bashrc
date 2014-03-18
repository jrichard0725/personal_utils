# .bashrc

# exports
export JAVA_HOME=/usr/java/latest
export PS1="\[\033[0;31m\]\t \u@\h\[\033[0m\] \W\$ "

#export PATH=

# exports used for sql EDIT command
export VISUAL=/usr/bin/vim
export EDITOR=/usr/bin/vim

if [ -n "$(type -P tmux)" ]; then
    if which tmux 2>&1 >/dev/null; then
        # when quitting tmux, try to attach
        while test -z ${TMUX}; do
            tmux attach || break
        done

        # if no session is started, start a new session
        test -z ${TMUX} && tmux
    fi
fi


# User specific aliases and functions
alias ll="ls -l"
alias la="ls -al"
alias lm="ls -al | more"
alias lt="ls -lrt"
alias clear="clear; hostname;"

#Git aliases
alias push="git push origin master"
alias pull="git pull"
alias ad="git add"
alias com="git commit"
alias coma="git commit --amend"
alias stat="git status"
alias co="git checkout"
alias gb="git branch"
alias reb="git rebase master"
alias subup="git submodule update"
alias subinit="git submodule update --init"
alias log="git log"

#Misc Aliases
alias reload="source ~/.bashrc && source ~/.bash_profile";
alias vhosts="vim /usr/local/apache/conf/extra/httpd-vhosts.conf";
alias restart="/usr/local/apache/bin/apachectl restart";
alias ssh-agent-cyg='eval `ssh-agent -s`';


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#This Changes the colors for ls
LS_COLORS='di=1;33:fi=0;36:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=32:*.rpm=90'
export LS_COLORS

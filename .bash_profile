# .bash_profile

# Get the aliases and functions

git_prompt (){
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        tmux rename-window $(basename `pwd`)
        return 0
    fi

    git_branch=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
    git_repo=$(git config --get-regexp remote.*.url | sed 's/.*\/\(.*\)$/\1/g')
    
    GREEN="\[\e[0;32m\]"
    NONE="\[\e[m\]"
    RED="\[\e[0;35m\]"

    tmux rename-window $git_repo

    echo "$GREEN[$git_repo$NONE/$RED$git_branch]"
}

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


# User specific environment and startup programs

PATH=$PATH:$HOME/bin


export PATH
unset USERNAME

ORANGE="\[\e[1;31m\]"
NONE="\[\e[m\]"
YELLOW="\[\e[1;33m\]"

PROMPT_COMMAND='PS1="$ORANGE\W $(git_prompt) $YELLOW\$ $NONE"'

#!/bin/bash

# history 多窗口追加合并
[ ${BASH_VERSION} ] && shopt -s histappend
[ ${ZSH_VERSION} ] && setopt APPEND_HISTORY

# [ ${ZSH_VERSION} ] && setopt prompt_subst


# 显示git branch name
find_git_branch () {
    local dir=. head
    until [ "$dir" -ef / ]; do
        if [ -f "$dir/.git/HEAD" ]; then
            head=$(< "$dir/.git/HEAD")
            if [[ $head = ref:\ refs/heads/* ]]; then
                git_branch=" → ${head#*/*/}"
            elif [[ $head != '' ]]; then
                git_branch=" → (detached)"
            else
                git_branch=" → (unknow)"
            fi
            return
        fi
        dir="../$dir"
    done
    git_branch=""
}

PROMPT_COMMAND='history -a'
export PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"

# $ sign before git_branch need to escape
# zsh
export PS1="%F{64}%n@%m:%~%F{124} %F{green}$ "
# bash
# export PS1="\[\e[1;38;5;64m\]\u@\h:\w\[\e[0;38;5;124m\]\$git_branch\[\e[0m\e[0;38;5;64m\] $\[\e[0m\] "
# export PS1_LOCAL="\[\e[1;38;5;172m\]\u@\h:\w\[\e[0;38;5;124m\]\$git_branch\[\e[0m\e[0;38;5;172m\] $\[\e[0m\] "

export CLICOLOR=1
export LSCOLORS=ExFxCxDxbxdxexGxGgGcGd

# alias
alias rm="rm -i"
alias ll='ls -lh'
alias grep="grep --color=auto -n"
#alias rsync="rsync -avzP"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Prompt, with git branch name (if in git repo)
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\[\033[32m\]\w \[\033[01;33m\]\$(parse_git_branch) \[\033[0m\]$ "

# Fix per netbeans
export AWT_TOOLKIT=MToolkit
export _JAVA_AWT_WM_NONREPARENTING=1

# Set Vi mode for bash
set -o vi

PATH=$PATH:/home/stonedz/bin
export PATH

export EDITOR="vim"

alias ls='ls --color=auto'
alias queexo='cd /home/stonedz/Data/Work/queexo/'
alias gits='git status'
alias gitpu='git push'

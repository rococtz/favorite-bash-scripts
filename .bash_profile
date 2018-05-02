export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# export PS1='\w $ '

###########################
####     ALIASES     ######
##########################
alias gfr="git fetch --all && git rebase"
alias mas="git checkout master"
alias rmas="git rebase master"
alias gs="git status"
alias glog="git log -n 8 --abbrev-commit --decorate --format=format:'%C(red)%h%C(reset) - %C(green)%ar%C(reset) - %C(bold yellow)%s%C(reset) - %C(bold blue)%aN%C(reset)%n'"
alias am="git commit --amend"
alias gc="git checkout"
alias gd="git diff"
alias gdt="git difftool"
alias showfiles="git show --pretty='' --name-status"

##########################
#        FUNCTIONS       #
#########################

function delbr() {
  git branch | grep $1 | xargs -n1 git branch -D
}

function gc() {
  arg="$"
  git checkout
}

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

get_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

alias bb="get_git_branch"

# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#############################
#            NVM            #
#############################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

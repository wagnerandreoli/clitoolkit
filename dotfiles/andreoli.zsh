alias grepalias='alias | grep '

# git (new and replaced aliases)
alias hi='hub pull-request -i'
alias gaa='git add --all'
alias glm='git log ...master'
alias gld='git log ...develop'
alias gdm='git diff master'
alias gdd='git diff develop'
alias gstl='git stash list'
alias gsta='git add -A; git stash'
alias gci='git-checkout-issue.sh'
alias pf='pip freeze'
alias pfg='pip freeze | grep -i -e '

export PROJECT_HOME=~/Dropbox/src/python

if [[ "${OSTYPE//[0-9.]/}" == 'darwin' ]]; then
    alias gwip='git add -A; git ls-files --deleted -z | xargs git rm; git commit -m "--wip--"'
    alias cave='cd ~/eatfirst/cave'
    alias core='deactivate && cd ~/eatfirst/core'

    # ==> Caveats
    # Add the following to your zshrc to access the online help:
    unalias run-help
    autoload run-help
    HELPDIR=/usr/local/share/zsh/help
else
    export BROWSER=chromium-browser

    # My personal environment variables
    [ -f ~/bin/.clitoolkitrc ] && source ~/bin/.clitoolkitrc
fi

# Force a directory change, to change the virtualenv, if any.
cd $PWD

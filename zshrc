stty -ixon

alias rm="rm -r"
alias q="exit"
alias cp="cp -i"
alias mv="mv -i"
alias diff="colordiff"

alias goland="open -a /Applications/GoLand.app/"
alias mint="cd ~/go/src/github.com/themintjp"
alias e='vim'

# Git alias
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gpsh="git push"
alias gpl="git pull"
alias gplod="git pull origin develop"
alias gs="git status"
alias gst="git stash"
alias gstp="git stash pop"
alias gl="git log"
alias gt="git log --oneline --graph --decorate"
alias gd="git diff"
alias gds="git diff --stat"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gb="git branch"
alias gbd="git branch -d"

autoload -Uz compinit
compinit
autoload -Uz colors
colors

PROMPT="%{${fg[red]}%}  %~  %{$reset_color%} %{${fg[yellow]}%}$  %{$reset_color%}"

export CLICOLOR=1
export LSCOLORS=cxgxcxdxcxegedabagacad
export GOPATH="$HOME/go"
export GOROOT="/usr/local/Cellar/go/1.16.3/libexec"

# PATH
export PATH=$HOME/.nodebrew/current/bin:$HOME/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.gem/ruby/3.0.0/bin:$PATH
export PATH=/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH

export EDITOR=vim
eval "$(direnv hook zsh)"

setopt auto_pushd
setopt pushd_ignore_dups
setopt correct
setopt list_packed
setopt histignorealldups
setopt nonomatch

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

chpwd() { ls }
setopt auto_cd

cdpath=(~ / ~/Programming /Applications)

zstyle ':completion:*' matcher-list 'm:{a-z}={A-z}'

function mkcd() {
  if [[ -d $1 ]] ; then
    echo "$1 already exists!"
    cd $1
  else
    mkdir -p $1 && cd $1
  fi
}

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'


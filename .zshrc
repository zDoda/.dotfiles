if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
 source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# If you come from bash you might have to change your $PATH.
export PATH=$PATH:/usr/sbin:$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.cargo/env:./:/Users/czook/Library/Python/3.9/bin:

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX=true
export ZSH_SESSION_TMPDIR="$HOME/Github"
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"

ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh
eval "$(/opt/homebrew/bin/brew shellenv)"

zstyle ':omz:update' mode auto      # update automatically without asking

source $HOME/.profile

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# CUSTOM ALIAS
alias nvim="/usr/local/bin/nvim"
alias vim="/usr/local/bin/nvim"
alias python='python3'
alias zshrc="vim ~/.zshrc"
alias srczsh="source ~/.zshrc"
alias nvimc="vim ~/.config/nvim/"
alias folder='open'

alias cs498='~/School/spring2024/cs498_cloud_computing_applications;'
alias cs441='~/School/spring2024/cs441_applied_machine_learning;'
#Git Aliases
alias ga='git add .'
alias gc='git commit -m '
alias gb='git branch'
alias gs='git status'
alias gr='cd `git rev-parse --show-toplevel`'
alias ll='/bin/ls -lha --color=always | fgrep -v --color=auto .DS_Store'
alias ls='ls --color=always | fgrep -v .DS_Store'

alias blogo='/Users/czook/Github/blogo/blogo.py'
alias godot='/Applications/Godot.app/Contents/MacOS/Godot'

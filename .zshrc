export ZSH="$HOME/.oh-my-zsh"

# ---- Kitty setup -----
export TERM=xterm-256color

ZSH_THEME="half-life"
# ZSH_THEME="kardan" 

plugins=(git web-search zsh-autosuggestions zsh-syntax-highlighting)
 
# fastfetch -l Panwah
source $ZSH/oh-my-zsh.sh

# ------- history setup --------
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history 
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# ------ Aliases ------
alias gco="git checkout"
alias ic="cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs"
alias icO="cd $HOME/Library/Mobile\ Documents/iCloud~md~obsidian/Documents"
alias reload-zsh="source ~/.zshrc"
alias edit-zsh="nvim ~/.zshrc"

# ----- NVM ------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ----- Bat (better cat) -----
# export BAT_THEME=tokyonight_night

# ----- Basher -----
export PATH="$HOME/.basher/bin:$PATH"   ##basher5ea843

eval "$(basher init - zsh)"             ##basher5ea843


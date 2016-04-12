BULLETTRAIN_TIME_SHOW=false
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_PROMPT_CHAR=''
BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_VIRTUALENV_SHOW=false
BULLETTRAIN_DIR_EXTENDED=1
BULLETTRAIN_DIR_BG=235
BULLETTRAIN_DIR_FG=255
BULLETTRAIN_HG_SHOW=false
BULLETTRAIN_GIT_CLEAN="%F{028} ✔%F{black}"
BULLETTRAIN_GIT_COLORIZE_DIRTY=true

source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
  zgen oh-my-zsh

  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/git-flow
  zgen oh-my-zsh plugins/z
  zgen oh-my-zsh plugins/brew
  zgen oh-my-zsh plugins/sublime

  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-autosuggestions

  # zgen oh-my-zsh themes/robbyrussell
  # zgen load bhilburn/powerlevel9k powerlevel9k
  zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train
  
  zgen save
fi

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

setopt HIST_IGNORE_ALL_DUPS

# Use caching so that commands like apt and dpkg complete are useable
# zstyle ':completion::complete:*' use-cache 1
# zstyle ':completion::complete:*' cache-path "$HOME/.zsh/cache/"

# zstyle ':completion:*:*:*:*:*' menu select
# zstyle ':completion:*:matches' group 'yes'
# zstyle ':completion:*:options' description 'yes'
# zstyle ':completion:*:options' auto-description '%d'
# zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
# zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
# zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
# zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
# zstyle ':completion:*:default' list-prompt '%S%M matches%s'
# zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
# zstyle ':completion:*' group-name ''
# zstyle ':completion:*' verbose yes

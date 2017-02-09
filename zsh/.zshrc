# PROMPT
BULLETTRAIN_PROMPT_ORDER=(
    status
    dir
    git
)
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

# ZSH options
setopt HIST_IGNORE_ALL_DUPS

# OH MY ZSH OPTIONS
DISABLE_AUTO_UPDATE="true"

# ZGEN
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

# ALIASES
alias redisup='redis-server /usr/local/etc/redis.conf'
alias redisdown='redis-cli shutdown'
alias mysqlup='mysql.server start'
alias mysqldown='mysql.server stop'

# VARS
export PATH="/usr/local/sbin:$PATH"

# GO
export GOPATH=/Users/dmitriiivashko/Projects/Go
export PATH="$PATH:$GOPATH/bin"

# NODE
export PATH=$HOME/.nodebrew/current/bin:$PATH
# export NVM_DIR="$HOME/.nvm"
# . "$(brew --prefix nvm)/nvm.sh"

export PATH="$HOME/.yarn/bin:$PATH"

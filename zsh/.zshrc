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

source $HOME/.antigen/antigen.zsh

# ZSH options
setopt HIST_IGNORE_ALL_DUPS

# OH MY ZSH OPTIONS
DISABLE_AUTO_UPDATE="true"

# ANTIGEN
antigen use oh-my-zsh

# PLUGINS
antigen bundle git
antigen bundle git-flow
antigen bundle z
antigen bundle brew
antigen bundle sublime
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# THEME
antigen theme caiogondim/bullet-train.zsh bullet-train

# ANTIGEN APPLY
antigen apply

# UTF
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# ALIASES
alias redisup='redis-server /usr/local/etc/redis.conf'
alias redisdown='redis-cli shutdown'
alias mysqlup='mysql.server start'
alias mysqldown='mysql.server stop'

# GO
# export GOPATH=/Users/dmitriiivashko/Projects/Go
# export PATH="$PATH:$GOPATH/bin"

# VARS
export PATH="/usr/local/sbin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color

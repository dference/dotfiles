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

SPACESHIP_BATTERY_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_HASKELL_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_DIR_TRUNC=3
# SPACESHIP_DIR_TRUNC_PREFIX="-/"
SPACESHIP_PROMPT_SEPARATE_LINE=false

# Antigen init
source $HOME/.antigen/antigen.zsh

# ZSH options
setopt HIST_IGNORE_ALL_DUPS

# OH MY ZSH OPTIONS
DISABLE_AUTO_UPDATE="true"

# ANTIGEN
antigen use oh-my-zsh

# PLUGINS
antigen bundle git
antigen bundle thefuck
antigen bundle git-flow
antigen bundle z
antigen bundle brew
antigen bundle sublime
antigen bundle docker
antigen bundle docker-compose
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# THEME
# antigen theme caiogondim/bullet-train.zsh bullet-train
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure

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
alias imshop-env='brew services run postgresql@10; brew services run rabbitmq; brew services run redis; brew services run elasticsearch-full; brew services run kibana-full'

# GO
export GOPATH=/Users/dmitriiivashko/Projects/Go
export PATH="$PATH:$GOPATH/bin"

# VARS
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
export TERM=xterm-256color
#export TERM=

# Ruby
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#export PATH="/usr/local/opt/ruby/bin:$PATH"
#export PATH="/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"

# export OPENCV_INCLUDE_DIR="/usr/local/Cellar/opencv/3.4.3/include"
# export OPENCV_LIB_DIR="/usr/local/Cellar/opencv/3.4.3/lib"
# export OPENCV_BIN_DIR="OPENCV_BIN_DIR"

# Postgres
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

# Android
eval "$(direnv hook zsh)"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias idea='open . -na "IntelliJ IDEA.app"'

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

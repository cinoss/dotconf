# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
# ZSH_THEME="cloud"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting git gitfast docker osx vi-mode)
GEOMETRY_PROMPT_PLUGINS=(hydrate virtualenv docker_machine exec_time git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# eval $(thefuck --alias)
alias f="fuck"

export CLASSPATH=".:/usr/local/lib/antlr-4.5.3-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.5.3-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'
alias bci='brew cask install'
alias bi='brew install'

alias backend='cd ~/Code/shopee/shopee_backend/'
alias mall='cd ~/Code/shopee/beeshop_web/'
alias partner='cd ~/Code/shopee/shopee_partner_platform/'
alias api='cd ~/Code/shopee/shopee_api_service/'
alias seller='cd ~/Code/shopee/shopee_powerseller/'
alias apidoc='cd ~/Code/shopee/shopee-webapi-doc/'
alias bstail='sh ~/Code/shopee/my-scripts/bstail.sh'

alias lestalk='cd ~/Code/lestalk/'

alias dm='docker-machine'
alias dk='docker'
alias dkc='docker container'
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcb='docker-compose build'
alias dcud='dcu -d'
alias dki='docker image'
alias ds='docker stack'

alias wire='cd ~/Code/smart-wire/'


alias nr='yarn run'
alias nig='yarn global add'
alias ni='yarn add'
alias nid='yarn add -D'

alias tma="tmux a"


# export PATH=${PATH}:/Applications/Genymotion.app/Contents/MacOS/tools/
# export ANDROID_HOME=~/Library/Android/sdk
# export PATH=${PATH}:${ANDROID_HOME}/tools
# export PATH=${PATH}:${ANDROID_HOME}/platform-tools
# export PATH=${PATH}:~/Library/Python/2.7/bin


alias tmux="TERM=xterm-256color tmux"
alias lan="ifconfig | grep 'inet 10.'|cut -d' ' -f 2"


alias pep="gst | grep modified | cut -f2 -d ' ' | xargs autopep8 --in-place --select E226,E261,E231,W601,E265,E302,E303,E225,E302,E701,W293,E265,E301,E241"

alias zoo="open ~/dropbox/black-sheep.dmg; ls /Volumes/Black\ Sheep/ || watch -gn 1 ls /Volumes/; subl /Volumes/Black\ Sheep/"

alias note="vim ~/dropbox/Notes"

alias rn="react-native"

alias rnios="rn run-ios"

alias gwsgi="gco -- */wsgi.py"

alias bproto='protoc -I=bridge/protofile/ --python_out=bridge/protobuf/pb/ bridge/protofile/beeshop_db.proto; protoc -I=bridge/protofile/ --python_out=bridge/protobuf/pb/ bridge/protofile/beeshop_cmd.proto; prot
oc -I=bridge/protofile/ --python_out=bridge/protobuf/pb/ bridge/protofile/beeshop_mq.proto; protoc -I=bridge/protofile/ --python_out=bridge/protobuf/pb/ bridge/protofile/beeshop_search.proto; protoc -I=bridge/pr
otofile/ --python_out=bridge/protobuf/pb/ bridge/protofile/beeshop_backend.proto;'

alias cleannode="ind . | grep -E 'node_modules$' | xargs rm -r"
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

alias tubudd="cd ~/Code/tubudd/web/tubudd"

esun_bt_pay() {
  if ! [ ${#1} -eq "5" ]; then
    echo "Payable should be 5 digits: $1"
    imgcat ~/Documents/esun_pay.png
    return
  fi
  curl -X POST --data "Data=20170608,\u9280\u884c,2,9213704020$1,$2,`date +"%Y%m%d%H%M%S"`,105694001243201050527CR+00000000088415+00011226460210\uff21\uff34\uff2d\u8de8\u884c\u8f49052900499000001822000028554017853492137B82201050527000004" "http://admin.test.shopee.tw/api/payment/esun/commit/"
}

# export ZPLUG_HOME=/usr/local/opt/zplug
# source $ZPLUG_HOME/init.zsh

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export EDITOR=vim
export SHELL=zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export GOPATH=$HOME/go-nuts
export GOBIN=$HOME/go-nuts/bin
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

[ -f ~/.zshrc.local ] && source ~/.zshrc.local


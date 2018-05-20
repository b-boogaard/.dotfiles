# System environment variables
export ARCHFLAGS="-arch x86_64"
export GOPATH=$HOME/go
export GRADLE_HOME=/Users/bv031773/bin/gradle-2.9
export LANG=en_US.UTF-8
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=512m"
export NODE_PATH=/usr/local/bin/node
export NODE_PATH=/usr/local/lib/jsctags:$NODE_PATH
export POWERLINE_HOME=/usr/local/lib/python3.6/site-packages
export SCALA_HOME=/usr/local/share/scala
export SOLARIZED_THEME=dark
export SSH_KEY_PATH=$HOME/.ssh/id_rsa
export TERM=xterm-256color

# bin paths
export PATH=/opt/chefdk/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$SCALA_HOME/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.jenv/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    #export EDITOR='TERM=xterm-16color emacs'
    export EDITOR='vim'
else
    #export EDITOR='TERM=xterm-16color emacs'
    export EDITOR='vim'
fi

# Source local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local

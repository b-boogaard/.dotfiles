# System environment variables
export ARCHFLAGS="-arch x86_64"
export GOPATH=$HOME/go
export GRADLE_HOME=$HOME/bin/gradle-2.9
export LANG=en_US.UTF-8
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=512m"
export NODE_PATH=/usr/local/bin/node
export NODE_PATH=/usr/local/lib/jsctags:$NODE_PATH
export PATH=$PATH:/Applications/Rakudo/bin:/Applications/Rakudo/share/perl6/site/bin
export POWERLINE_HOME=/$HOME/.local/lib/python3.7/site-packages
export SCALA_HOME=/usr/local/share/scala
export SOLARIZED_THEME=dark
export SSH_KEY_PATH=$HOME/.ssh/id_rsa
export TERM=xterm-256color

# bin paths
export PATH=/opt/chefdk/bin:$PATH
export PATH=/usr/local/ActivePerl-5.26/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/Cellar/openresty/1.15.8.1/nginx/sbin:$PATH
export PATH=/usr/local/Cellar/openresty/1.15.8.1/luajit/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$SCALA_HOME/bin:$PATH
export PATH=/Applications/CMake.app/Contents/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.jenv/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/opt/make/libexec/gnubin:$PATH
export PATH=/usr/local/Cellar/emacs/26.2/bin:$PATH
export PATH=/usr/local/Cellar/macvim/8.1-157/bin:$PATH
export PATH=/usr/local/opt/openssl/bin:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH

# Only add path to gnu-tar if it exists
if which gtar &>/dev/null ; then
    export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
fi

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

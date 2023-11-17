# System environment variables
export ARCHFLAGS="-arch x86_64"
export GOPATH=$HOME/go
export GRADLE_HOME=$HOME/bin/gradle-2.9
export LANGUAGE="en_US:en",
export LANG=en_US.UTF-8
export MAVEN_OPTS="-Xmx2048m -XX:MaxPermSize=512m"
export NODE_PATH=/usr/local/bin/node
export NODE_PATH=/usr/local/lib/jsctags:$NODE_PATH
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"
export POWERLINE_HOME=/usr/local/lib/python3.11/site-packages
export PYENV_ROOT=$HOME/.pyenv
export SCALA_HOME=/usr/local/share/scala
export SOLARIZED_THEME=dark
export SSH_KEY_PATH=$HOME/.ssh/id_rsa
export TERM=xterm-256color
export ZGEN_HOME=$HOME/.zgen
export ZSH_THEME="blinks"
export GITHUB_TOKEN=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
export HOMEBREW_GITHUB_API_TOKEN=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

# bin paths
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.jenv/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.pyenv/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=/usr/local/Cellar/openresty/1.15.8.1/nginx/sbin:$PATH
export PATH=/usr/local/Cellar/openresty/1.15.8.1/luajit/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$SCALA_HOME/bin:$PATH
export PATH=/Applications/CMake.app/Contents/bin:$PATH
export PATH=/usr/local/opt/make/libexec/gnubin:$PATH
export PATH=/usr/local/Cellar/emacs/26.2/bin:$PATH
export PATH=/usr/local/Cellar/macvim/8.1-161/bin:$PATH
export PATH=/usr/local/opt/openssl/bin:$PATH
export PATH=/usr/local/opt/sqlite/bin:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export PATH=/usr/local/opt/v8@3.15/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH

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

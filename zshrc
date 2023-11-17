# Load pyenv if available
if which pyenv &>/dev/null ; then
    eval "$(pyenv init -)"
fi

# Load jenv if available
if which jenv &>/dev/null ; then
    eval "$(jenv init -)"
fi

# Load rbenv if available
if which rbenv &>/dev/null ; then
    eval "$(rbenv init - zsh)"
fi

# Alias hub to git if available
if which hub &>/dev/null ; then
    eval "$(hub alias -s)"
fi

# Load goenv if available
if which goenv &>/dev/null ; then
  eval "$(goenv init -)"
fi

# Load luarocks if available
if which luarocks &>/dev/null ; then
   eval $(luarocks path --bin)
fi

powerline-daemon -q

export LSCOLORS=exfxfeaeBxxehehbadacea

# Load custom functions
for function in ~/.zsh/functions/*; do
    source $function
done

# Load powerline
source $POWERLINE_HOME/powerline/bindings/zsh/powerline.zsh

# Load and configure zgen if it exists
source $HOME/.zgenrc

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

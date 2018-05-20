# Load custom functions
for function in ~/.zsh/functions/*; do
    source $function
done

# Load powerline
. $POWERLINE_HOME/powerline/bindings/zsh/powerline.zsh

# Create ~/.antigen/ if it does not exist
mkdir -p ~/.antigen

# Source antigen zsh plugin manager.
# https://github.com/zsh-users/antigen
source /usr/local/share/antigen/antigen.zsh

# Load antigen configuration.
antigen init $HOME/.antigenrc

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
    eval "$(rbenv init -)"
fi

# Alias hub to git if available
if which hub &>/dev/null ; then
    eval "$(hub alias -s)"
fi

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

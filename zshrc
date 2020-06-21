# Load custom functions
for function in ~/.zsh/functions/*; do
    source $function
done

# Load powerline
. $POWERLINE_HOME/powerline/bindings/zsh/powerline.zsh

# Load and configure zgen if it exists
if [ -f $HOME/.zgen/zgen.zsh ] ; then
   source "${HOME}/.zgenrc"
fi

# Load keychain if available
if which keychain &>/dev/null ; then
  eval "$(keychain --noask --agents gpg --eval id_dsa 3D3917B580C15C461D652564F56DA7D476635AC2)"
fi

# Load pyenv if available
if which pyenv &>/dev/null ; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
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

# Load goenv if available
if which goenv &>/dev/null ; then
  eval "$(goenv init -)"
fi

if which luarocks &>/dev/null ; then
  eval "$(luarocks path --bin)"
fi

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

source $HOME/.zprofile

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/mnt/e/ubuntu/.sdkman"
[[ -s "/mnt/e/ubuntu/.sdkman/bin/sdkman-init.sh" ]] && source "/mnt/e/ubuntu/.sdkman/bin/sdkman-init.sh"

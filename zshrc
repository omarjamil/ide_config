## Functions
source ~/.shell/functions.sh

# Allow local customizations in the ~/.shell_local_before file
if [ -f ~/.shell_local_before ]; then
    source ~/.shell_local_before
fi

if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

# External plugins (initialized before)
# source ~/.zsh/plugins_before.zsh

# Settings
source ~/.zsh/settings.zsh

# Bootstrap
source ~/.shell/bootstrap.sh

# External settings
source ~/.shell/external.sh

# Aliases
source ~/.shell/aliases.sh

# Custom prompt
# source ~/.zsh/prompt.zsh

# External plugins (initialized after)
# source ~/.zsh/plugins_after.zsh

# Allow private customizations (not checked in to version control)
if [ -f ~/.shell_private ]; then
    source ~/.shell_private
fi

# shell integration
# source ~/.iterm2_shell_integration.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Have homebrew and ~/bin higher in the path
export PATH="/opt/homebrew/bin:/Users/oj249/bin:$PATH"
# export PATH="/Users/oj249/Library/Python/3.9/bin:$PATH"

# zsh-histdb
#HISTDB_TABULATE_CMD=(sed -e $'s/\x1f/\t/g')
#source $HOME/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh
#autoload -Uz add-zsh-hook

# Allow local customizations in the ~/.shell_local_after file
if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi

# pyenv 
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Created by `pipx` on 2024-09-18 11:33:01
export PATH="$PATH:/Users/oj249/.local/bin"
export PATH=/Users/oj249/.pixi/bin:$PATH
eval "$(pixi completion --shell zsh)"

# Install starship
# curl -sS https://starship.rs/install.sh | sh
# starship
eval "$(starship init zsh)"

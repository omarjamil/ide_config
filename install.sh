cd $HOME
mkdir config_backup
mv .gitconfig .git_ignore .emacs .emacs.d .bashrc .bash_profile .vimrc .vim .bash config_backup
mkdir .config

# create softlinks 
ln -s $HOME/ide_config/bash $HOME/.bash
ln -s $HOME/ide_config/bashrc $HOME/.bashrc
ln -s $HOME/ide_config/zsh $HOME/.zsh
ln -s $HOME/ide_config/zshrc $HOME/.zshrc
ln -s $HOME/ide_config/bash_profile $HOME/.bash_profile
ln -s $HOME/ide_config/shell $HOME/.shell
ln -s $HOME/ide_config/tmux.conf $HOME/.tmux.conf
ln -s $HOME/ide_config/nvim $HOME/.config/nvim
ln -s $HOME/ide_config/zsh/p10k.zsh $HOME/.p10k.zsh

# echo "installing zinit"
# bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# echo "installing zsh-autosuggestions"
# git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh/zsh-autosuggestions

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.local/fzf
$HOME/.local/fzf/install --all

# echo "Installing Homebrew"
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "To install lazygit"
echo "brew install jesseduffield/lazygit/lazygit"
# brew install jesseduffield/lazydocker/lazydocker 


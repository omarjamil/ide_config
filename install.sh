# The argument needs to be the path to the home area
cd $1
mkdir config_backup
mv .gitconfig .git_ignore .emacs .emacs.d .bashrc .bash_profile .vimrc .vim .bash config_backup
mkdir .config

# create softlinks 
ln -s $1/ide_config/bash $1/.bash
ln -s $1/ide_config/bashrc $1/.bashrc
ln -s $1/ide_config/zsh $1/.zsh
ln -s $1/ide_config/zshrc $1/.zshrc
ln -s $1/ide_config/bash_profile $1/.bash_profile
ln -s $1/ide_config/shell $1/.shell
ln -s $1/ide_config/tmux.conf $1/.tmux.conf
ln -s $1/ide_config/nvim $1/.config/nvim
ln -s $1/ide_config/zsh/p10k.zsh $1/.p10k.zsh

# echo "installing zinit"
# bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# echo "installing zsh-autosuggestions"
# git clone https://github.com/zsh-users/zsh-autosuggestions $1/.zsh/zsh-autosuggestions

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git $1/.local/fzf
$1/.local/fzf/install --all

# echo "Installing Homebrew"
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "To install lazygit"
echo "brew install jesseduffield/lazygit/lazygit"
# brew install jesseduffield/lazydocker/lazydocker 


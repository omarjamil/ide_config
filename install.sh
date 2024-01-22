# create softlinks 
ln -s ~/dotfiles/bash ~/.bash
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/zsh ~/.zsh
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dotfiles/shell ~/.shell
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/zsh/p10k.zsh ~/.p10k.zsh

echo "installing zinit"
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

echo "installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.local/fzf
~/.local/fzf/install 

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "To install lazygit"
echo "brew install jesseduffield/lazygit/lazygit"

echo "To install neovim"
echo "curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage && chmod u+x nvim.appimage"
echo "To install fzf"
echo "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf"
echo "~/.fzf/install"

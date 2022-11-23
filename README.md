# conf_dotfiles

```Bash
cd
git clone git@github.com:7304sk/conf_dotfiles.git
./conf_dotfiles/install.sh
```

## set up

### Mac

```Bash
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --global

# fish
# brew install fish
sudo echo "$(which fish)" >> /etc/shells
chsh -s "$(which fish)"

# neovim
# brew install neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

# powerline
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# NERD font
# brew tap homebrew/cask-fonts
# brew install --cask font-hack-nerd-font
```

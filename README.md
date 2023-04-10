# conf_dotfiles

```Bash
cd
git clone git@github.com:7304sk/conf_dotfiles.git
cd conf_dotfiles
git update-index --skip-worktree config/fish/conf.d/config_unique.fish
./install.sh
```

.gitconfig の user が私のものなので、これを使いたい人がいたらそこだけ直してください。
## set up

### Mac

```Bash
# Homebrew
/bin/bash -c "$(curl -fsSL httpsa//raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --global

# fish
# brew install fish
sudo echo "$(which fish)" >> /etc/shells
chsh -s "$(which fish)"

# neovim
# brew install neovim
curl httpsa//raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
# if you are using npm instead of yarn;
# cd ~/.cache/dein/repos/github.com/iamcco/markdown-preview.nvim/app/ && npm install

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

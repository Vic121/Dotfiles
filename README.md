# Steps

## Use dotfiles

Clone repository to your home folder.

### Install deps

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo apt-get install git tmux vim fzf tree curl wget
snap install go docker node
pip install --user tmuxp
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

or

```bash
brew install git vim zsh tmux fzf tree go openssl python readline awscli awslogs ruby terraform terraform_landscape cmake composer jmeter lua jq dep wget node freetype youtube-dl
pip install --user tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Link configs

```bash
ln -s dotfiles/vimrc .vimrc
mv .zshrc .zshrc.old
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/tmux.conf .tmux.conf
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/gitignore .gitignore
ln -s dotfiles/gitmessage .gitmessage
ln -s dotfiles/git_template .git_template
```

### iTerm

Install Powerline fonts for iTerm by following instructions on https://github.com/powerline/fonts

Themes https://github.com/mbadolato/iTerm2-Color-Schemes

### MacOS

https://mwholt.blogspot.be/2012/09/fix-home-and-end-keys-on-mac-os-x.html

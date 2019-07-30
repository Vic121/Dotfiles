# Steps

## Use dotfiles

Clone repository to your home folder.

### Install deps

*Ubuntu*

```bash
sudo apt-get install git zsh tmux vim tree curl wget xclip
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

*MacOS*

```bash
brew install git vim zsh tmux fzf tree openssl python cmake wget freetype
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Extras

*Ubuntu* 

```bash
snap install go docker node python-pip libpq-dev python-dev
pip install --user tmuxp pgcli
```

*MacOS*

```bash
brew install go readline awscli awslogs pgcli ruby terraform terraform_landscape composer jmeter lua jq dep node youtube-dl
pip install --user tmuxp
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

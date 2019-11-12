# Use dotfiles

Clone repository to your home folder.

## Install deps

### Ubuntu

```bash
sudo apt install git ssh zsh tmux vim tree curl wget xclip fonts-powerline software-properties-common gcc make terminator
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### MacOS

```bash
brew install git ssh zsh vim tmux fzf tree openssl python cmake wget freetype
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Extras

### Ubuntu

```bash
sudo snap install sublime-text --classic
sudo snap install code --classic
sudo snap install slack --classic
snap install go --classic
sudo snap install node --channel=13/stable --classic
sudo snap install slack --classic
snap install docker node terraform chromium vlc spotify
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
apt install python-pip libpq-dev python-dev vpnc mc
pip install --user tmuxp pgcli
```

### MacOS

```bash
brew install go readline awscli awslogs pgcli ruby terraform terraform_landscape composer jmeter lua jq dep node youtube-dl
pip install --user tmuxp
```

## Configs

```bash
mv .zshrc .zshrc.old
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/tmux.conf .tmux.conf
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/gitignore .gitignore
ln -s dotfiles/gitmessage .gitmessage
ln -s dotfiles/git_template .git_template
```

## Vim

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s dotfiles/vimrc .vimrc
mkdir .vim/colors
cp dotfiles/vim/colors/* .vim/colors/
```

Launch `vim` and run `:PluginInstall`

## MacOS

https://mwholt.blogspot.be/2012/09/fix-home-and-end-keys-on-mac-os-x.html

### iTerm

Install Powerline fonts for iTerm by following instructions on https://github.com/powerline/fonts

Themes https://github.com/mbadolato/iTerm2-Color-Schemes

### Ubuntu

### Jetbrains

```bash
sudo snap install pycharm-professional --classic
sudo snap install phpstorm --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install webstorm --classic
sudo snap install datagrip --classic
sudo snap install goland --classic
```

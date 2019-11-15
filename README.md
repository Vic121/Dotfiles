# Use dotfiles

Clone repository to your home folder.

## Install deps

### Ubuntu

```bash
sudo apt install git ssh zsh tmux vim tree curl wget htop xclip fonts-powerline software-properties-common gcc make python-pip libpq-dev python-dev
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
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install terminator vpnc mc ansible
sudo snap install docker node terraform chromium postman vlc spotify
sudo snap install sublime-text --classic
sudo snap install code --classic
sudo snap install go --classic
sudo snap install node --channel=13/stable --classic
sudo snap install slack --classic
sudo snap install filezilla --beta
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

## Ubuntu

### Jetbrains

```bash
sudo snap install pycharm-professional --classic
sudo snap install phpstorm --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install webstorm --classic
sudo snap install datagrip --classic
sudo snap install goland --classic
```

### KVM

https://help.ubuntu.com/community/KVM/Installation

```bash
sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
sudo adduser `id -un` libvirt

```

### Other stuff

- [Brave browser](https://brave-browser.readthedocs.io/en/latest/installing-brave.html#linux)
- Transmission - `sudo apt install transmission`
- [VirtualBox](https://www.virtualbox.org/wiki/Linux_Downloads)
- [Signal](https://signal.org/download/)
- Whatsdesk - `sudo snap install whatsdesk`

# Use dotfiles

## Ubuntu

### Reqs

```bash
sudo apt install -y git ssh build-essential curl file tmux screen mc tree curl wget htop xclip fonts-powerline software-properties-common gcc make pipx libpq-dev python-dev apt-transport-https ca-certificates gnupg-agent gnupg2
git clone https://github.com/Homebrew/brew ~/.linuxbrew/Homebrew

; Zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

; Vim
sudo apt install -y vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

; Configs via dotfiles repo
git clone https://github.com/yezooz/dotfiles.git ~/dotfiles
mv ~/.zshrc ~/.zshrc.old 2>/dev/null
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitmessage ~/.gitmessage
ln -s ~/dotfiles/git_template ~/.git_template
mv ~/.vimrc ~/.vimrc.old 2>/dev/null
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim/colors ~/.vim/colors
```

### Dev tools

```bash
sudo apt-get update
sudo apt install -y terminator vpnc ansible
brew install terraform terragrunt terraform_landscape node typescript jsonnet go composer clojure aws-iam-authenticator pgcli
pip install --user tmuxp

; Ansible
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

; Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository --yes --update "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt -y install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
brew install docker-completion docker-compose docker-compose-completion docker-machine docker-machine-completion

; K8s
brew install kubectl eksctl k9s helm kubectx

; Minikube + KVM
sudo apt install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
sudo adduser `id -un` libvirt
sudo adduser `id -un` kvm
brew install minikube
```

### Desktop tools

```bash
sudo snap install chromium postman vlc spotify whatsdesk
sudo snap install sublime-text --classic
sudo snap install code --classic
sudo snap install slack --classic
sudo snap install filezilla --beta
```

#### Jetbrains

```bash
sudo snap install pycharm-professional --classic
sudo snap install phpstorm --classic
sudo snap install intellij-idea-ultimate --classic
sudo snap install webstorm --classic
sudo snap install datagrip --classic
sudo snap install goland --classic
```

### iTerm

Install Powerline fonts for iTerm by following instructions on https://github.com/powerline/fonts

Themes https://github.com/mbadolato/iTerm2-Color-Schemes

## MacOS

### Reqs

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git ssh tmux fzf tree openssl python cmake wget freetype

; Zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

; Vim
brew install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

; Configs via dotfiles repo
git clone https://github.com/yezooz/dotfiles.git ~/dotfiles
mv ~/.zshrc ~/.zshrc.old && ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitmessage ~/.gitmessage
ln -s ~/dotfiles/git_template ~/.git_template
mv ~/.vimrc ~/.vimrc.old && ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim/colors ~/.vim/colors
```

### Dev tools

```bash
brew cask install virtualbox virtualbox-extension-pack vagrant jetbrains-toolbox
brew install go readline awscli awslogs pgcli ruby terraform terraform_landscape composer jmeter lua jq dep node clojure memcached mysql-client nmap openjdk php
pip install --user tmuxp

; Docker
brew cask install docker-toolbox
brew install vagrant-completion docker-completion docker-compose docker-compose-completion docker-machine docker-machine-completion

; K8s
brew install kubectl eksctl k9s helm kubectx minikube
```

### Desktop tools

```bash
brew install iterm2
brew cask install sublime-text visual-studio-code slack 
```

### Extras

```bash
brew install youtube-dl
brew cask install transmission whatsapp signal
```

https://mwholt.blogspot.be/2012/09/fix-home-and-end-keys-on-mac-os-x.html

Launch `vim` and run `:PluginInstall`

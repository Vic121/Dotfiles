# Steps

## Vim
Configuration based on [spf13-vim](http://vim.spf13.com/).

Installation `curl http://j.mp/spf13-vim3 -L -o - | sh`

## Use dotfiles

Close repository to your home folder.

### Zsh

Install `zsh` via `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Link `.zshrc` file
`mv .zshrc .zshrc.old` and link one from repo `ln -s dotfiles/zshrc .zshrc`

### iTerm

Install Powerline fonts for iTerm by following instructions on https://github.com/powerline/fonts

Themes https://github.com/mbadolato/iTerm2-Color-Schemes

### Atom

Install Atom editor

Connect configs:
`ln -s ~/dotfiles/atom/* ~/.atom/``

https://mwholt.blogspot.be/2012/09/fix-home-and-end-keys-on-mac-os-x.html

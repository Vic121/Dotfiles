# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

source $HOME/.zsh_aliases

export EDITOR='subl -w'

export TERMINAL="terminator"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

DEFAULT_USER="marek"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ansible aws common-aliases extract python docker)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# OS Detection
export OSX=
export LINUX=

if [[ $(uname) == 'Linux' ]]; then
  export LINUX=1
  export GNU_USERLAND=1

  # Snap
  export PATH=$PATH:/snap/bin

  # Docker via Snap
  export PATH=$PATH:/snap/docker/current/bin

  # Pip
  export PATH=$PATH:~/.local/bin

  # GOROOT via Snap
  export GOROOT=/snap/go/current

  # Homebrew
  export PATH=$PATH:~/.linuxbrew/bin

  # Caps Lock as ESC for Vim
  gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"
fi

if [[ $(uname) == 'Darwin' ]]; then
  export OSX=1

  export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin":~/Library/Python/3.7/bin:$PATH

  # Brew Vim
  /usr/local/bin/vim --version >/dev/null 2>&1
  BREW_VIM_INSTALLED=$?
  if [ $BREW_VIM_INSTALLED -eq 0 ]; then
    alias vi="/usr/local/bin/vim"
  fi

  # Go
  export GOROOT=/usr/local/opt/go/libexec

   # Composer
  export PATH=~/.composer/vendor/bin:$PATH

  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi

# Go
export GOPATH=$HOME/go
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# Kube
source <(kubectl completion zsh)

# Search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

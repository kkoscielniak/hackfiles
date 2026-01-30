export ZSH="$HOME/.oh-my-zsh"


if [[ -f "$HOME/.dotfiles/env" ]]; then
	source "$HOME/.dotfiles/env"
fi

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"

# disable oh-my-zsh aliases
zstyle ':omz:plugins:*' aliases no

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux zoxide)
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_DEFAULT_SESSION_NAME=trickster

# zstyle ':omz:plugins:git' aliases no

eval "$(starship init zsh)"
source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

$HOME/.dotfiles/aliases.zsh

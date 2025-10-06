if [[ -f "$HOME/.dotfiles/aliases" ]]; then
	source "$HOME/.dotfiles/aliases"
fi

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select # keyboard-driven autocompletion
zstyle ':completion::complete:*' gain-privileges 1 # sudo autocompletion

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

if [[ -f "$HOME/.dotfiles/env" ]]; then
	source "$HOME/.dotfiles/env"
fi



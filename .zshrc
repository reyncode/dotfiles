if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### platform specific ###

if [[ $PLATFORM = "linux" ]]; then

	# aliases
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'

	# sources
	source "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
	source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

elif [[ $PLATFORM = "apple" ]]; then
	echo "apple platform"
fi

### shared ###

# aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# sources
[[ ! -f ~/.config/p10k/.p10k.zsh ]] || source ~/.config/p10k/.p10k.zsh

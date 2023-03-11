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
	# aliases
	alias ls='ls -Gla'

	# sources
	source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme
fi

### shared ###

# aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias keymaps="nvim ~/.config/nvim/lua/alex/core/keymaps.lua"
alias options="nvim ~/.config/nvim/lua/alex/core/options.lua"

# sources
[[ ! -f ~/.config/p10k/.p10k.zsh ]] || source ~/.config/p10k/.p10k.zsh

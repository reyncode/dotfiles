if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### platform specific ###

if [[ $PLATFORM = "linux" ]]; then

	# aliases
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'

	# sources
  if [[ $DISTRO = "archlinux" ]]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  else
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  fi
  
  source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

elif [[ $PLATFORM = "apple" ]]; then
	
	# aliases
	alias ls='ls -G'

	# sources
	source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme
fi

### shared ###
HISTFILE=$HOME/.cache/zsh/.zsh_history
HISTSIZE=2000
SAVEHIST=1000

# global aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias keymaps="nvim ~/.config/nvim/lua/alex/core/keymaps.lua"
alias options="nvim ~/.config/nvim/lua/alex/core/options.lua"
alias py="/usr/bin/python3"

# global sources
[[ ! -f ~/.config/p10k/.p10k.zsh ]] || source ~/.config/p10k/.p10k.zsh

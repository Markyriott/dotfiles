# load modules 
autoload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

# completion options
zstyle ':completion:*' menu select

# main options
setopt auto_menu menu_complete
setopt no_case_glob no_case_match
setopt globdots
setopt extended_glob

# prompt
PROMPT="%F{white}%n%f%F{250}@%f%F{222}%m%f %F{253}%1~%f %F{7}%#%f "

# vi mode
# bindkey -v

export EDITOR="nvim"

# general aliases
alias ll='ls --color -lah'
alias c='clear'
alias v='nvim'
alias fzf='fzf --tmux --preview "cat {}"'
alias vzsh='v ~/.config/zsh/.zshrc'
alias sourcezsh='source ~/.config/zsh/.zshrc'

# git aliases
alias gs='git status'
alias gl='git log --all --graph'
alias gf='git fetch'

# ssh aliases
alias apollo='ssh apollo'

# alias function
mcd(){
    mkdir -p "$@" && cd "$@"
}

HISTFILE="$XDG_CACHE_HOME/zsh_histfile"
HISTCONTROL=ignoreboth
HISTSIZE=1000
SAVEHIST=1000

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

[ $(uname -s) = 'Linux' ] && export PATH="$PATH:/snap/bin"

# shell integration
eval "$(fzf --zsh)"

# yazi shell wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

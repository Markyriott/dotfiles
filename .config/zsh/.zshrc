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
PROMPT="[%n@%m] %1~ %% "

# vi mode
bindkey -v

# shell integration
eval "$(fzf --zsh)"

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

# alias functions
mcd(){
    mkdir -p "$@" && cd "$@"
}

HISTFILE="$XDG_CACHE_HOME/zsh_histfile"
HISTCONTROL=ignoreboth
HISTSIZE=1000
SAVEHIST=1000

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

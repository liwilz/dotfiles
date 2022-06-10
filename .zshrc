# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/photon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Starship
eval "$(starship init zsh)"

# Bindkeys fix
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  "^[[1~"   beginning-of-line
bindkey  "^[[4~"   end-of-line

# Aliases
alias ...='cd ../..'
alias g='git'
alias grep='grep --color=auto'
alias la='exa -lah --color=auto --icons'
alias lh='exa -lh --color=auto --icons'
alias ls='exa --color=auto --icons'
alias l='exa --color=auto --icons'
alias :q='exit'
alias vim='nvim'
alias pacinfo='pacman -Qi'
alias rmorphans='sudo pacman -Rns $(pacman -Qdtq)'
alias d='dragon -a -x'
alias notes='nvim /data/sync/Documents/vimwiki/index.md'
alias pacs='pacman -Q | wc -l'
alias bsp='startx b'

# Autostart
# yaft
# bsp

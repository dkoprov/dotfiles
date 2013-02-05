alias ls='ls -G'
alias ll='ls -l'
alias l='ls -lA'

# tree aliaces
alias tree='tree --dirsfirst'

# git aliaces
alias gtree='git log --graph --full-history --all --color --pretty=format:"%x1b[33m%h%x09%x09%x1b[32m%d%x1b[0m %x1b[34m%an%x1b[0m   %s" "$@"'

# pwd and cd aliases
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'

# mkdir
mcd() { mkdir -p "$@" && cd "$@"; }

alias reload!='source $HOME/.zshrc'
alias vi='mvim -v'

alias glg='git lg -15'
alias gls='git ll -15'

alias ls='ls -Ghl'
alias l='ls -lA'

alias be='bundle exec'

# tree aliaces
alias tree='tree --dirsfirst'

# git aliaces
alias gtree='git log --graph --full-history --all --color --pretty=format:"%x1b[33m%h%x09%x09%x1b[32m%d%x1b[0m %x1b[34m%an%x1b[0m   %s" "$@"'

# pwd and cd aliases
alias .='pwd'
alias ..='cd ..'

alias redis_start='redis-server /usr/local/etc/redis.conf'

alias fs='FAST_SPEC_START=1 ./bin/test'

alias git_clear_merged_branches='git co master && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias workout-old='cd ~/work/octoshell'
alias workout-basic='cd ~/work/octoshell2/octoshell-basic'
alias workout='cd ~/work/octoshell2/octoshell'

alias obi='bundle install --path=~/work/octoshell-bundle'

alias setjdk6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setjdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setjdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

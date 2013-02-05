#== Respect your history, dude! ===============================================
HISTFILE=~/.histfile           # history file location
HISTSIZE=1000000               # number of history lines kept internally
SAVEHIST=1000000               # max number of history lines saved
setopt APPEND_HISTORY          # history appends to existing file
setopt HIST_EXPIRE_DUPS_FIRST  # duplicate history entries lost first
setopt HIST_FIND_NO_DUPS       # history search finds once only
setopt HIST_IGNORE_ALL_DUPS    # remove all earlier duplicate lines
setopt HIST_IGNORE_SPACE       # don’t store lines starting with space
setopt HIST_REDUCE_BLANKS      # trim multiple insgnificant blanks in history


# cycling through the history with the Up/Down keys
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# turn on colorize if needed
if [ "$TERM" != "dumb" ]; then
  if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
  else
    export LS_COLORS='no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:do=00;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=00;32:*.tar=00;31:*.tgz=00;31:*.svgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.dz=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tbz2=00;31:*.tz=00;31:*.deb=00;31:*.rpm=00;31:*.jar=00;31:*.rar=00;31:*.ace=00;31:*.zoo=00;31:*.cpio=00;31:*.7z=00;31:*.rz=00;31:*.jpg=00;35:*.jpeg=00;35:*.gif=00;35:*.bmp=00;35:*.pbm=00;35:*.pgm=00;35:*.ppm=00;35:*.tga=00;35:*.xbm=00;35:*.xpm=00;35:*.tif=00;35:*.tiff=00;35:*.png=00;35:*.svg=00;35:*.mng=00;35:*.pcx=00;35:*.mov=00;35:*.mpg=00;35:*.mpeg=00;35:*.m2v=00;35:*.mkv=00;35:*.ogm=00;35:*.mp4=00;35:*.m4v=00;35:*.mp4v=00;35:*.vob=00;35:*.qt=00;35:*.nuv=00;35:*.wmv=00;35:*.asf=00;35:*.rm=00;35:*.rmvb=00;35:*.flc=00;35:*.avi=00;35:*.fli=00;35:*.gl=00;35:*.dl=00;35:*.xcf=00;35:*.xwd=00;35:*.yuv=00;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:';
  fi
  # fucking standarts (TODO: maybe we need to use `uname` here)
  case $OSTYPE in
    linux*)
      export LS_OPTIONS='--color=auto'
      export GREP_OPTIONS='--color=auto'
    ;;
    darwin*)
      export LS_OPTIONS='-G'
      export GREP_OPTIONS='--color=auto'
    ;;
  esac
fi

# colorize some stuff
GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n GRC ]; then
  alias colourify="$GRC -es --colour=auto"
  alias configure='colourify ./configure'
  alias diff='colourify diff'
  alias make='colourify make'
  alias gcc='colourify gcc'
  alias g++='colourify g++'
  alias as='colourify as'
  alias gas='colourify gas'
  alias ld='colourify ld'
  alias netstat='colourify netstat'
  alias ping='colourify ping'
  alias traceroute='colourify /usr/sbin/traceroute'
fi

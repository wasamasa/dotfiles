if test -n "$PS1"; then
  fortune

  shopt -s checkwinsize
  shopt -s expand_aliases
  shopt -s extglob
  shopt -s globstar
  shopt -s histappend
  
  HISTCONTROL=ignoredups:ignorespace
  HISTSIZE=1000
  HISTFILESIZE=2000
  
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  
  splice_frames() {
    ffmpeg -ss $2 -i "$1" -f image2 -t $3 -qscale 0 img%5d.png
  }
  musicvideo() {
    ffmpeg -shortest -loop 1 -i $1 -i $2 -acodec copy -vcodec libx264 $3
  }
  
  stty -ixon
  xrdb ~/.Xresources

  PS1="\$(if [[ \$? -ne 0 ]]; then echo -e '\[\033[0;31m\]>_<\[\033[0m\]'; else echo -e '\[\033[0;32m\]^_^\[\033[0m\]'; fi) "
fi

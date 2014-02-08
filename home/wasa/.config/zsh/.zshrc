autoload -U compinit promptinit colors
autoload -Uz vcs_info
compinit
promptinit
colors
setopt promptsubst \
  histappend histverify sharehistory \
  histsavenodups histignorespace histreduceblanks histignorealldups
zstyle ':vcs_info:*' enable hg git bzr svn
precmd() {
  vcs_info
}
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

HISTFILE=~/.config/zsh/.zhistory
HISTSIZE=10000
SAVEHIST=$HISTSIZE
READNULLCMD=$PAGER

alias ls='ls --color=auto'
alias grep='grep --color=auto'

splice_frames() {
  ffmpeg -ss $2 -i "$1" -f image2 -t $3 -qscale 0 img%5d.png
}
musicvideo() {
  ffmpeg -shortest -loop 1 -i $1 -i $2 -acodec copy -vcodec libx264 $3
}

rm() { echo Use del }

fortune
stty -ixon
xrdb ~/.Xresources
PROMPT='%(?.%F{green}^_^.%F{red}¬_¬)%f '
RPROMPT='${vcs_info_msg_0_}'
PS2='... '

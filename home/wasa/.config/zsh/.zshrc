autoload -U tetriscurses
autoload -U compinit promptinit colors
autoload -Uz vcs_info
compinit
promptinit
colors
setopt promptsubst \
  incappendhistory histverify sharehistory \
  histsavenodups histignorespace histreduceblanks histignorealldups
zstyle ':vcs_info:*' enable hg git bzr svn
precmd() {
  vcs_info
}
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true

bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char

HISTFILE=~/.config/zsh/.zhistory
HISTSIZE=10000
SAVEHIST=$HISTSIZE
READNULLCMD=$PAGER

unset zle_bracketed_paste

alias sudo='sudo '
alias ls='ls --color=auto'
alias grep='grep --color=auto'

compdef sc=systemctl
compdef jc=journalctl
compdef pc=pacman

alias sc=systemctl
alias jc=journalctl
alias pc=pacman

alias album-lengths="find ~/music/todo -mindepth 1 -type d -exec album-length '{}' \;"

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

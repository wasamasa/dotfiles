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

alias ls='ls --color=auto'
alias grep='grep --color=auto'

compdef sc=systemctl
compdef jc=journalctl
compdef pc=pacman

alias sc=systemctl
alias jc=journalctl
alias pc=pacman

alias newsboat="newsboat -q"
alias aurget="auracle -r -C ~/tmp download"

alias album-lengths="find ~/music/todo -mindepth 1 -type d -exec album-length '{}' \;"

pb() {
  curl -sF "file=@${1:--}" 'https://0x0.st' -o /dev/stderr | xclip -selection clipboard
}

enable_networks() {
  for i in $(wpa_cli list_networks | tail -n+3 | cut -f1); do
    wpa_cli enable_network $i >/dev/null
  done
}

eval $(keychain --eval --quiet id_ed25519)

fortune
stty -ixon
xrdb ~/.Xresources
PROMPT='%(?.%F{green}^_^.%F{red}¬_¬)%f '
RPROMPT='${vcs_info_msg_0_}'
PS2='... '

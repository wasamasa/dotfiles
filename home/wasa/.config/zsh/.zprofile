typeset -U path
envoy -t ssh-agent
source <(envoy -p)
path=(~/bin
      ~/.cask/bin
      ~/.chickens/5.0.0/bin
      ~/.local/bin
      ~/.usr/bin
      ~/.rbenv/bin
      ~/.gem/ruby/2.5.0/bin
      ~/.gem/ruby/2.4.0/bin
      /usr/lib/ccache/bin/
      $path)
eval "$(rbenv init -)"

export _JAVA_OPTIONS=-Djava.io.tmpdir=/var/tmp
export GTK_CSD=0
export EDITOR=em
export VISUAL=em
export ALTERNATE_EDITOR="" # emacsclient
export SUDO_EDITOR=vim
export PAGER=less
export LESS=-Ri
export SSH_ASKPASS=~/bin/ssh-askpass
export SUDO_ASKPASS=~/bin/sudo-askpass
export BASH_ENV=~/.config/bash/aliases
export HOST=$(hostname)
export BROWSER=urlhandler
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export QT_STYLE_OVERRIDE=adwaita
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export ACK_PAGER=less
export ASPROOT=/tmp
export TEXMFHOME=~/.local/share/texmf
export PYTHONSTARTUP=~/.config/python/pythonrc
export ACKRC=~/.config/ack/ackrc
export MPV_HOME=~/.config/mpv
export RLWRAP_HOME=~/.local/share/rlwrap
export NPM_CONFIG_USERCONFIG=~/.config/npm/config
export XKB_DEFAULT_LAYOUT=us,ru
export XKB_DEFAULT_VARIANT=,phonetic
export XKB_DEFAULT_OPTIONS=compose:102,parens:swap_brackets,grp:shifts_toggle
export WINEDLLOVERRIDES="winemenubuilder.exe=d,mscoree,mshtml=d"
export PASSWORD_STORE_CHARACTER_SET="a-zA-Z0-9*-/:-@\\^-\`{-~"
export ANDROID_HOME=/opt/android-sdk
export DOCKER_CONFIG=~/.config/docker
export AGRC=~/.config/ag/agrc
export ANSIBLE_NOCOWS=1
export GCC_COLORS='error=31:warning=35:note=36:range1=32:range2=34:locus=01:quote=01:fixit-insert=32:fixit-delete=31:diff-filename=01:diff-hunk=32:diff-delete=31:diff-insert=32:type-diff=32'
export LS_COLORS='no=00:di=00;34:ln=00;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33:cd=40;33:or=40;31:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=00;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;33:*.au=00;33:*.flac=00;33:*.mid=00;33:*.midi=00;33:*.mka=00;33:*.mp3=00;33:*.mpc=00;33:*.ogg=00;33:*.ra=00;33:*.wav=00;33:*.axa=00;33:*.oga=00;33:*.spx=00;33:*.xspf=00;33'

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec xinit -- -nolisten tcp :0 vt$XDG_VTNR -ardelay 200 -arinterval 40

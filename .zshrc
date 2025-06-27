export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="amuse"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

alias gl="git log --graph --full-history --all --color --date=short --pretty=tformat:\"%x1b[31m%h%x08%x1b[0m%x20%ad %x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x1b[0m\""

function sublime() {
   /Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text "$@" &
}

prompt_context() {
   if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
     prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
   fi
}

autoload -Uz colors && colors

# 호스트 이름 (컨테이너 이름)
HOSTNAME_SHORT=$(hostname -s)

# 첫 줄: 시계 아이콘 + 시간 + 현재 경로
# 둘째 줄: 사용자@컨테이너이름$
PROMPT='%F{magenta}⌚ %*%f %F{white}%~%f
%F{green}%n@%F{yellow}'"triton_proj"'%f$ '

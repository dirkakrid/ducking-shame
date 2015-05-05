# /etc/bash.bashrc
##########################################################################################################################################################################################
[[ $- != *i* ]] && return
if [[ `id -u` != 0 ]];then if [[ `id -g` == "10" ]];then
    PS1='\[\e[0;32m\]\u@container\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
  else
    PS1='\[\e[1;32m\][\u@container \W]\$\[\e[0m\] '
  fi
else
  PS1='\[\e[1;31m\][\u@container \W]\$\[\e[0m\] '
fi
PS2='> '
PS3='> '
PS4='+ '
##########################################################################################################################################################################################
case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
##########################################################################################################################################################################################
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -alh'
alias c='clear; cat /etc/banner'
alias cl='clear; cat /etc/banner;l'
alias ..='cd ..'
export EDITOR=vim
function passwdgen { cat /dev/random | tr -cd 'a-zA-Z0-9' | fold -w 32 | head -n 1; }

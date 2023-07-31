#
# ~/.zshrc
#

if [[ -f $HOME/.zprofile ]]; then
	source $HOME/.zprofile
fi

autoload -Uz compinit up-line-or-beginning-search down-line-or-beginning-search
compinit

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  "^[[5~"  up-line-or-beginning-search
bindkey  "^[[6~"  down-line-or-beginning-search

alias ssh="TERM=screen /usr/bin/ssh"

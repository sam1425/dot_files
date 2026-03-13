##
## Plugins
##

# Zinit's installer
#ZINIT_HOME="${ZINIT_HOME:-${XDG_DATA_HOME:-${HOME}/.local/share}/zinit}"

#if [[ ! -f ${ZINIT_HOME}/zinit.git/zinit.zsh ]]; then
    #print -P "%F{14}▓▒░ Installing Flexible and fast ZSH plugin manager %F{13}(zinit)%f"
    #command mkdir -p "${ZINIT_HOME}" && command chmod g-rwX "${ZINIT_HOME}"
    #command git clone https://github.com/zdharma-continuum/zinit.git "${ZINIT_HOME}/zinit.git" && \
        #print -P "%F{10}▓▒░ Installation successful.%f%b" || \
        #print -P "%F{9}▓▒░ The clone has failed.%f%b"
#fi

#source "${ZINIT_HOME}/zinit.git/zinit.zsh"
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

eval "$(sheldon source)"
#autoload -Uz compinit
#if [[ -n ${HOME}/.zcompdump(#qN.m-1) ]]; then
  #compinit -C -Q
#else
  #compinit -Q
#fi
#zinit cdreplay -q

# ZSH-VI
#zinit ice wait"0" lucid
#zinit light jeffreytse/zsh-vi-mode

#zinit ice wait"0" lucid blockf atpull'zinit creinstall -q .'
#zinit light zsh-users/zsh-completions

#zinit ice wait"1" 
#zinit light hlissner/zsh-autopair 

#zinit ice wait"0" lucid
#zinit light-mode for \
  #zsh-users/zsh-autosuggestions \
  #Aloxaf/fzf-tab

#zinit ice wait"1" lucid
#zinit light zsh-users/zsh-history-substring-search \

#zdharma-continuum/history-search-multi-word

# FZF
#zinit ice from"gh-r" as"command"
#zinit light junegunn/fzf-bin

# EZA
#zinit ice wait lucid from"gh-r" as"program" 
#zinit light eza-community/eza

# BAT
#zinit ice wait lucid from"gh-r" as"program" mv"*/bat -> bat" atload"export BAT_THEME='Nord'"
#zinit light sharkdp/bat

#load syntax highlight at last to avoid race conditions

#zinit ice wait"2" lucid atinit"zpcompinit; zpcdreplay"
#zinit light zdharma-continuum/fast-syntax-highlighting

function man() {
  LESS_TERMCAP_mb=$'\e[1;31m' \
  LESS_TERMCAP_md=$'\e[1;31m' \
  LESS_TERMCAP_me=$'\e[0m' \
  LESS_TERMCAP_so=$'\e[1;33m\e[44m' \
  LESS_TERMCAP_se=$'\e[0m' \
  LESS_TERMCAP_us=$'\e[1;32m' \
  LESS_TERMCAP_ue=$'\e[0m' \
  GROFF_NO_SGR=1 command man "$@"
}

# vim:ft=zsh

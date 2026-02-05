## =============== ##
##   Keybindings   ##
## =============== ##

bindkey -v

function smart-k-up() {
    if [[ -n "$POSTDISPLAY" ]]; then
        zle autosuggest-accept
    elif [[ -n "${widgets[history-substring-search-up]}" ]]; then
        zle history-substring-search-up
    else
        zle up-line-or-history
    fi
}
zle -N smart-k-up

function smart-j-down() {
    if [[ -n "${widgets[history-substring-search-down]}" ]]; then
        zle history-substring-search-down
    else
        zle down-line-or-history
    fi
}
zle -N smart-j-down

# --- Binds ---
bindkey -M viins '^K' smart-k-up
bindkey -M vicmd '^K' smart-k-up
bindkey -M viins '^J' smart-j-down
bindkey -M vicmd '^J' smart-j-down

# ctrl J & K for going up and down in prev commands
bindkey -M vicmd 'k' smart-k-up
bindkey -M vicmd 'j' smart-j-down

# prepend sudo on the current commmand
bindkey -M emacs '' _sudo_command_line
bindkey -M vicmd '' _sudo_command_line
bindkey -M viins '' _sudo_command_line

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey -s '^o' '_smooth_fzf^M'

bindkey "^U" backward-kill-line
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^H" backward-kill-word
bindkey '^R' fzf-history-widget

#bindkey "^?" backward-delete-char
#bindkey "^H" backward-delete-char
#bindkey "^k" kill-line
#bindkey "^j" backward-word
#bindkey "^k" forward-word
#bindkey "^J" history-search-forward
#bindkey "^K" history-search-backward

#bindkey -s '^K' 'ls^M'

# fix backspace and other stuff in vi-mode
bindkey -M viins '\e/' _vi_search_fix

# Add text object extension -- eg ci" da(:
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
        bindkey -M $m $c select-quoted
    done
done
# vim:ft=zsh:nowrap

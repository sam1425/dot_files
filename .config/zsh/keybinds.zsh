##
## Keybindings
##
bindkey -v
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
#bindkey -s '^K' 'ls^M'
bindkey -s '^o' '_smooth_fzf^M'

# prepend sudo on the current commmand
bindkey -M emacs '' _sudo_command_line
bindkey -M vicmd '' _sudo_command_line
bindkey -M viins '' _sudo_command_line

# fix backspace and other stuff in vi-mode
bindkey -M viins '\e/' _vi_search_fix
bindkey "^?" backward-delete-char
bindkey "^H" backward-delete-char
bindkey "^U" backward-kill-line
# binds
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^k" kill-line
bindkey "^j" backward-word
bindkey "^k" forward-word
bindkey "^H" backward-kill-word
# ctrl J & K for going up and down in prev commands
bindkey "^J" history-search-forward
bindkey "^K" history-search-backward
bindkey '^R' fzf-history-widget

# Add text object extension -- eg ci" da(:
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
        bindkey -M $m $c select-quoted
    done
done
# vim:ft=zsh:nowrap

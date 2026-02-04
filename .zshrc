## ░▀▀█░█▀▀░█░█░█▀▄░█▀▀
## ░▄▀░░▀▀█░█▀█░█▀▄░█░░
## ░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀
##
## sam's edit from rxyhn's Z-Shell configuration
## https://www.reddit.com/r/unixporn/comments/uxpydc/awesome_rxyhns_workflow/
## https://github.com/raexera/yoru/tree/main/misc/home

while read file
do 
  source "/home/c0mplex/.config/zsh/$file.zsh"
done <<-EOF
theme
env
aliases
utility
options
plugins
keybinds
prompt
EOF

# vim:ft=zsh:nowrap

export PATH=$PATH:/home/c0mplex/.scripts/

#export PATH=$PATH:/home/c0mplex/.spicetify

#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# pnpm
#export PNPM_HOME="/home/c0mplex/.local/share/pnpm"
#case ":$PATH:" in
  #*":$PNPM_HOME:"*) ;;
  #*) export PATH="$PNPM_HOME:$PATH" ;;
#esac
# pnpm end
#[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# bun completions
#[ -s "/home/c0mplex/.bun/_bun" ] && source "/home/c0mplex/.bun/_bun"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

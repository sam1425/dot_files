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

export PATH=$PATH:/home/c0mplex/.scripts/usrbin/

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

# Manual overrides for Fast-Syntax-Highlighting
# This ensures sudo and make are different colors
# --- Minimalist Syntax Highlighting ---

# 1. Reset everything to "no color" (clean look)
#FAST_HIGHLIGHT_STYLES[default]='none'

# 2. Distinguish 'sudo' from the 'command'
#FAST_HIGHLIGHT_STYLES[precommand]='fg=yellow,bold'   # sudo, time, etc.
#FAST_HIGHLIGHT_STYLES[command]='fg=green,bold'      # make, ls, git

# 3. Highlight useful flags/options
#FAST_HIGHLIGHT_STYLES[option]='fg=cyan'             # -a, --help, -j4
#FAST_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'
#FAST_HIGHLIGHT_STYLES[double-hyphen-option]='fg=cyan'

# 4. Highlight paths (so you know where files are)
#FAST_HIGHLIGHT_STYLES[path]='fg=blue'

# 5. Keep the "Error" highlight (Red tells you the command is wrong)
#FAST_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'

# 6. Make strings/quotes neutral but visible
#FAST_HIGHLIGHT_STYLES[single-quoted-argument]='fg=white'
#FAST_HIGHLIGHT_STYLES[double-quoted-argument]='fg=white'

#FAST_HIGHLIGHT_STYLES[variable]='fg=magenta'
#FAST_HIGHLIGHT_STYLES[arithmetic]='fg=magenta'
#
# --- Updated Minimalist Highlighting ---

# Sometimes FSH categorizes finished arguments as 'hashed-command' or 'default'
FAST_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'
# --- The "Anti-White-out" completion block ---

# Colors for the commands themselves
FAST_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
FAST_HIGHLIGHT_STYLES[command]='fg=green,bold'
FAST_HIGHLIGHT_STYLES[function]='fg=green,bold'
FAST_HIGHLIGHT_STYLES[hashed-command]='fg=green,bold'

# Colors for the paths (this fixes the cd Programming/ issue)
FAST_HIGHLIGHT_STYLES[path]='fg=blue,underline'
FAST_HIGHLIGHT_STYLES[path-separator]='fg=blue,underline'

# Colors for the flags/options (so they stay cyan after Tab)
FAST_HIGHLIGHT_STYLES[option]='fg=cyan'
FAST_HIGHLIGHT_STYLES[single-hyphen-option]='fg=cyan'
FAST_HIGHLIGHT_STYLES[double-hyphen-option]='fg=cyan'

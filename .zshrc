## ░▀▀█░█▀▀░█░█░█▀▄░█▀▀
## ░▄▀░░▀▀█░█▀█░█▀▄░█░░
## ░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀
##
## sam's edit from rxyhn's Z-Shell configuration
## https://www.reddit.com/r/unixporn/comments/uxpydc/awesome_rxyhns_workflow/

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

export PATH=$PATH:/home/c0mplex/.spicetify

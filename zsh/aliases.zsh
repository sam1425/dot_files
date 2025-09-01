## Aliases

#especific for c development
alias makec='clang -o exe'
#especific for monogame engine
alias mgcb_editor='dotnet mgcb-editor Content/Content.mgcb'
alias bgr='feh --bg-scale "$(find ~/Pictures/wallpaper -type f | shuf -n1)"'
alias icat='kitten icat'

#Useful:
alias clear="printf '\033[2J\033[3J\033[1;1H'"
alias c="c"
alias q="exit"
alias cleanram="sudo sh -c 'sync; echo 3 > /proc/sys/vm/drop_caches'"
alias tar='tar -zcvf' # mtar <archive_compress>
alias untar='tar -zxvf' # utar <archive_decompress> <file_list>
alias zip='zip -r' # z <archive_compress> <file_list>
alias sr='source ~/.config/zsh/env.zsh'
alias ..="cd .."
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -p"
alias fm='yazi'
alias pacin="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1}) <(pacman -Fl {1} | awk \"{print \$2}\")' | xargs -ro sudo pacman -S"
alias paruin="paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk \"{print \$2}\")' | xargs -ro  paru -S"
alias pacrem="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias pac="pacman -Q | fzf"
alias parucom="paru -Gc"
alias parupd="paru -Qua"
alias pacupd="pacman -Qu"
alias parucheck="paru -Gp"
alias cleanpac='sudo pacman -Rns $(pacman -Qtdq); paru -c'
alias installed="grep -i installed /var/log/pacman.log"
alias ls="exa --icons --group-directories-first"
alias l="ls -l"
alias l.="ls -A | egrep '^\.'"
alias listdir="ls -d */ > list"
alias la="ls -a"
alias ld="exa --icons --only-dirs"
alias ll="ls -alFh"
alias lla="ls -la"
alias llh="ls -lh"
alias lt="ls --tree"
alias cat="bat --color always --plain"
alias grep='grep --color=auto'
alias mv='mv -v'
alias cp='cp -vr'
##alias rm='rm -vr'
#Not so useful: 
alias mkgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias run='pnpm run'
alias trim_all="sudo fstrim -va"
#git specific:
alias gitaliases= 'source "~/.config/zsh/specific/gitaliases.zsh"'
# vim:ft=zsh

alias cp 'cp -i'                                 # confirm before overwriting something
alias df 'df -h'                                 # human-readable sizes
alias free 'free -m'                             # show sizes in MB
alias md 'mkdir'
alias rd 'rmdir'
alias vp 'nvim PKGBUILD'
alias more less
alias myip 'curl ipinfo.io/ip'                   # Get my public IP address
alias untar 'tar -zxvf'
alias l 'ls -l'
alias lm 'ls -t -1'
alias lt 'ls --human-readable --size -1 -S --classify'
alias cl 'clear'
alias s 'systemctl'
alias j 'journalctl'

# Pacman
alias pi 'sudo pacman -Sy'
alias pr 'sudo pacman -R'
alias pu 'sudo pacman -Syu'

# DNF (Fedora)
alias di 'sudo dnf install'
alias dr 'sudo dnf remove'
alias du 'sudo dnf update'

# My Scripts
alias synchdd 'sudo ~/Scripts/sync_files.sh'
alias sch 'cat ~/College/schedule.txt'
alias todo 'cat ~/Personal/todo/todo'

# Git
alias g 'git'
alias gst 'git status'
alias gadd 'git add'
alias gpush 'git push'
alias gcom 'git commit'
alias gcomm 'git commit -m'
alias gcoma 'git commit -am'
alias gres 'git restore'
alias gress 'git restore --staged'
alias gidff 'git diff'

# Applications
alias v 'nvim'
alias vim 'nvim'
alias emc 'emacsclient -c -a 'emacs''
alias code 'codium'
alias mega 'megasync-cli'
alias pdf 'zathura --fork'
alias vpn 'sudo protonvpn'
alias ytdl "yt-dlp -i -o \'%(title)s.%(ext)s\'"
alias ymdl "yt-dlp -i -x --audio-format opus -o \'%(title)s.%(ext)s\'"
alias anime 'ani-cli'
alias dosbox "dosbox -conf \'$XDG_CONFIG_HOME\'/dosbox/dosbox.conf"
alias edit 'gnome-text-editor'
alias open 'nautilus'

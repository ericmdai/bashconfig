HISTCONTROL=ignoredups

# Alias stuff
alias profile="subl ~/.bash_profile"
alias aliases="subl ~/.bash_aliases"
alias proxy="subl ~/.bash_proxy"
alias refresh="source ~/.bash_profile && clear"

# Weird navigation commands I never use
alias back="cd -"
alias ls='/usr/local/bin/gls --color -h -l --group-directories-first'
alias lsl="ls -l"
alias lsa="ls -a"
alias lsla="ls -la"
alias lsal="ls -al"

# Python aliases
alias python="python2"
alias pip="pip2"
alias venv="virtualenv venv"
alias activate="source venv/bin/activate"
alias pyserver="python -m SimpleHTTPServer"

# Directory shortcuts
alias down="cd ~/Downloads/"

# SSH shortcuts

# Other stuff
alias git=hub

alias ips="~/.parse_ifconfig.sh"
alias pt="ping google.com"

alias restart-touchbar="killall ControlStrip"
alias tb="restart-touchbar"

alias ygopro="sudo open /Applications/YgoproLinks/Ygopro.app/Contents/MacOS/Ygopro"

HISTCONTROL=ignoredups

# Alias stuff
alias profile="subl ~/.bash_profile"
alias aliases="subl ~/.bash_aliases"
alias proxy="subl ~/.bash_proxy"
alias refresh="source ~/.bash_profile && clear"
alias path="echo $PATH"

# Weird navigation commands I never use
alias back="cd -"
alias ls='/usr/local/bin/gls --color -h -l --group-directories-first'
alias lsa="ls -a"

# Python aliases
alias venv="virtualenv venv"
alias activate="source venv/bin/activate"
alias pyserver="python -m SimpleHTTPServer"

# Directory shortcuts
alias dl="cd ~/Downloads/"
alias down="cd ~/Downloads/"

# SSH shortcuts

# Other stuff
alias git=hub

## Networking
alias ips="~/.parse_ifconfig.sh"
alias pt="ping google.com"

## MacBook Pro Touchbar
alias restart-touchbar="killall ControlStrip"
alias tb="restart-touchbar"

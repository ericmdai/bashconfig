export PROMPT_COMMAND=__prompt_command  # Func to gen PS1 after CMDs

function __prompt_command() {
    local EXIT="$?" # This needs to be first so the previous exit code not overriden
    PS1=""

    # Color defs
    local default='\e[39m'
    local black='\e[30m'
    local red='\e[31m'
    local green='\e[32m'
    local yellow='\e[33m'
    local blue='\e[34m'
    local magenta='\e[35m'
    local cyan='\e[36m'
    local light_gray='\e[37m'
    local dark_gray='\e[90m'
    local light_red='\e[91m'
    local light_green='\e[92m'
    local light_yellow='\e[93m'
    local light_blue='\e[94m'
    local light_magenta='\e[95m'
    local light_cyan='\e[96m'
    local White='\e[97m'
    local RCol='\[\e[0m\]' # Resets color of string after RCol

    # Configs
    local user_name=$USER
    local comp_name=$(hostname -f)

    local venv=$magenta
    local name=$green
    local comp=$green
    local path=$cyan
    local branch=$yellow
    local exit_code=$red

    # Building prompt
    PS1+="[ ${name}${user_name}${RCol}" # User
    PS1+="@" # Separator
    PS1+="${comp}${comp_name}${RCol} ]" # Computer
    PS1+=" ${path}\w${RCol}" # Directory

    # Showing python virtual environment if active
    if [[ -n $VIRTUAL_ENV ]]; then
        PS1="${venv}(venv)${RCol} ${PS1}"
    fi

    # Git branch info
    if git branch &>/dev/null; then
        BRANCH="$(git branch 2>/dev/null | grep \* |  cut -d " " -f 2)"
        PS1+=" ($branch$BRANCH$RCol)"
    fi

    # Add exit code if previous command didn't exit with 0
    if [ $EXIT != 0 ]; then
        PS1+=" ${exit_code}Exit $EXIT$RCol "
    fi

    PS1+="\n$ "
}

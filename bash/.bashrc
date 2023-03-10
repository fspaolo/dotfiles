alias ls='ls -G'
alias sgpt='/Applications/snap/bin/gpt'

export PATH="$PATH:/Applications/snap/bin"

# disable creation of __pycache__
export PYTHONDONTWRITEBYTECODE=1

# source '/Users/fspaolo/anaconda3/etc/profile.d/conda.sh'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Display prompt
parse_git_branch() {
        git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
    }
    COLOR_DEF='%f'
    COLOR_USR='%F{243}'
    COLOR_DIR='%F{197}'
    COLOR_GIT='%F{39}'
    NEWLINE=$'\n'
    setopt PROMPT_SUBST
    export PROMPT='${COLOR_USR}%n@${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '

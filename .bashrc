#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



alias ls='ls --color=auto'
alias grep='grep --color=auto'
# I added
alias v='nvim'
alias vim='echo "Use v!!!"'
alias sudo='sudo '
alias iotop='sudo iotop'
#alias sudoi='sudo -i'
#alias sudos='sudo -s'

PS1='\[\033[1;37m\][\[\033[0;37m\]\u\[\033[1;37m\]@\[\033[0;31m\]\h\[\033[1;33m\]\W\[\033[1;37m\]]\[\033[1;37m\]$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/praise/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/praise/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/praise/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/praise/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# init node version manager
source /usr/share/nvm/init-nvm.sh

export PATH="$HOME/bin:$PATH"
export VISUAL=nvim
export EDITOR="$VISUAL"

# Opens new st in same location
jp() {
    if [ "$#" -ne 0 ]; then
        nohup st -e sh -c "cd $1; exec bash" >/dev/null 2>&1 &
    else
        nohup st -e sh -c "cd $(pwd); exec bash" >/dev/null 2>&1 &
    fi
}

# Copys cat command to clipboard
function catclip() {
        cat $1 | xclip -selection clipboard
}

function gpuw {
    watch -n1 'nvidia-smi'
}

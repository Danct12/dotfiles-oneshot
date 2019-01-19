#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && $TERM != xterm  && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

echo "You only have one shot, $USER.
"


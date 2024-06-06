#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Fzf integration
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Starship init
eval "$(starship init bash)"

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# zoxide feature
source ~/.bashrc.d/zoxide.bashrc

# aliases
source ~/.aliases

# environment
export $(envsubst < ~/.env)

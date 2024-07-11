#
# ~/.bashrc
#

# source all files in .bashrc.d
for file in ~/.bashrc.d/*.bashrc; do source "$file"; done

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
eval "$(zoxide init bash)"

# aliases
source ~/.aliases

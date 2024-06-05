#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Fzf integration
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# # Use ~~ as the trigger sequence instead of the default **
# export FZF_COMPLETION_TRIGGER='**'
#
# # Options to fzf command
# export FZF_COMPLETION_OPTS='--border --info=inline'
#
#
# # Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# # - The first argument to the function ($1) is the base path to start traversal
# # - See the source code (completion.{bash,zsh}) for the details.
# _fzf_compgen_path() {
#   fd --hidden --follow --exclude ".git" . "$1"
# }
#
# # Use fd to generate the list for directory completion
# _fzf_compgen_dir() {
#   fd --type d --hidden --follow --exclude ".git" . "$1"
# }
#
# # Advanced customization of fzf options via _fzf_comprun function
# # - The first argument to the function is the name of the command.
# # - You should make sure to pass the rest of the arguments to fzf.
# _fzf_comprun() {
#   local command=$1
#   shift
#
#   case "$command" in
#     cd)           fzf --preview 'tree -C {} | head -200'   "$@" ;;
#     export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
#     ssh)          fzf --preview 'dig {}'                   "$@" ;;
#     *)            fzf --preview 'bat -n --color=always {}' "$@" ;;
#   esac
# }
# Starship init
eval "$(starship init bash)"

# Set default editor
export EDITOR=nvim
export NVIM_APPNAME=astronvim
# Set default terminal
export TERM=kitty

# Using vim mode for command line edit
# set -o vi

# environment variants
export ALIYUNPAN_CONFIG_DIR=/home/w1_liamby/.config/aliyunpan.cfg
export https_proxy=http://127.0.0.1:7897 http_proxy=http://127.0.0.1:7897 all_proxy=socks5://127.0.0.1:7897

# aliases
alias alipan='aliyunpan-go'

# broot
source /home/w1_liamby/.config/broot/launcher/bash/br

# append go bin path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/w1_liamby/.local/share/JetBrains/Toolbox/scripts:/home/w1_liamby/.local/share/JetBrains/Toolbox/scripts:/home/w1_liamby/go/bin:/home/w1_liamby/.local/share/coursier/bin

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# zoxide feature
source /home/w1_liamby/.bashrc.d/zoxide.bashrc

# set Qt config
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_STYLE_OVERRIDE=breeze


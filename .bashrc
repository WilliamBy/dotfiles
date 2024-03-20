#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Starship init
eval "$(starship init bash)"

# Set default editor
export EDITOR=nvim

# Using vim mode for command line edit
set -o vi

# environment variants
export ALIYUNPAN_CONFIG_DIR=/home/w1_liamby/.config/aliyunpan.cfg
export https_proxy=http://127.0.0.1:7897 http_proxy=http://127.0.0.1:7897 all_proxy=socks5://127.0.0.1:7897

# aliases
alias alipan='aliyunpan-go'

# broot
source /home/w1_liamby/.config/broot/launcher/bash/br

# append go bin path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/w1_liamby/.local/share/JetBrains/Toolbox/scripts:/home/w1_liamby/.local/share/JetBrains/Toolbox/scripts:/home/w1_liamby/go/bin

# tmux utilities

if command -v fzf &> /dev/null && command -v tmux &> /dev/null; then
    alias tmux-attach="tmux attach -t \`tmux list-sessions | awk '{print \$1}' | sed 's/://' | fzf\`"
else
    alias tmux-attach="echo 'tmux or fzf not installed yet'"
fi 

alias ta=tmux-attach

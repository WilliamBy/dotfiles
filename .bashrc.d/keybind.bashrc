# inner bind
bind '"\C-p": previous-history'
bind '"\C-n": next-history'
bind '"\C-a": beginning-of-line'
bind '"\C-e": end-of-line'
bind '"\C-f": forward-char'
bind '"\C-b": backward-char'
bind '"\C-d": delete-char'
bind '"\C-k": kill-line'
bind '"\C-u": unix-line-discard'
bind '"\C-w": unix-word-rubout'
bind '"\C-y": yank'

# extra bind
ai_gen_cmd() {
    command -v aichat >/dev/null 2>&1 || { echo "Can't find aichat command"; exit 1; }
    aichat -e ${READLINE_LINE#\#\s*}
    READLINE_LINE=""
    READLINE_POINT=0
}
bind -x '"\C-g": ai_gen_cmd'

bind -x '"\C-l": tmux-attach'

fuzzy_find_dir() {
    command -v fzf > /dev/null 2>&1 || { echo "Can't find fzf command"; exit 1; }
    TARGET=`find ./ | fzf`
    READLINE_LINE="${READLINE_LINE}${TARGET}"
    READLINE_POINT=`echo ${#TARGET}+${READLINE_POINT} | bc`
}
bind -x '"\C-j": fuzzy_find_dir'

# .bashrc
export EDITOR="nvim"
export VISUAL="nvim"

# --- Force block cursor in bash ---
# Block cursor
echo -ne '\e[2 q'

# Ensure block cursor after each command
PROMPT_COMMAND='echo -ne "\e[2 q"'

# Fix cursor after programs like nvim, less, etc
bind '"\e[0 q": "echo -ne \e[2 q\n"'

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

#auto completion
source /usr/share/bash-completion/bash_completion

# Enable history search with arrow keys
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'


alias os='~/Documents/books/pending/OS/'
alias np='~/Documents/books/pending/NetworkProg/'
alias c='~/Documents/books/pending/Cprogramming/'
alias lnx="~/Documents/books/pending/linux"

#auto correct
# Auto-correct minor typos in cd
shopt -s cdspell

export PATH="/home/moncef/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/moncef/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

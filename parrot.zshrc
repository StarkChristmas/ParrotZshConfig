# Zsh configuration
# Author: HexChristmas

# Zsh plugins
ANTIGEN="$HOME/.local/bin/antigen.zsh"
source "$ANTIGEN"
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle pip
antigen bundle svn-fast-info
antigen bundle colorize
antigen bundle github
antigen bundle python
antigen bundle willghatch/zsh-cdr
antigen apply

# Terminal proxy settings
# Proxy auto start
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7891
# Open proxy
on() {
#    export https_proxy=http://127.0.0.1:1087
#    export http_proxy=http://127.0.0.1:1087
#    export all_proxy=socks5://127.0.0.1:1086
    export https_proxy=http://127.0.0.1:7890
    export http_proxy=http://127.0.0.1:7890
    export all_proxy=socks5://127.0.0.1:7891
    echo "HTTP/HTTPS Proxy on"
}

# Close proxy
down() {
    unset http_proxy
    unset https_proxy
    unset all_proxy
    echo "HTTP/HTTPS Proxy off"
}

# Alias shotcut keys
# alias xx='xxx' 

# Terminal command highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
ZSH_HIGHLIGHT_STYLES[assign]=none

# Terminal display colors config
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

force_color_prompt=yes
PROMPT=$'%{\e[0;31m%}%B┌─[%b%{\e[0m%}%{\e[1;37m%}%n%{\e[1;33m%}@%{\e[0m%}%{\e[0;96m%}%m%{\e[0;31m%}%B]%b%{\e[0m%}-%b%{\e[0;31m%}%B[%b%{\e[1;37m%}%~%{\e[0;31m%}%B]%b%{\e[0m%}
%{\e[0;31m%}%B└──╼ %{\e[1;33m%}%B$%{\e[1;33m%}%B%{\e[0m%}%b'

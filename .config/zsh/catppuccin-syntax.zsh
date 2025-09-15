# Catppuccin Mocha colors for fast-syntax-highlighting
# Based on Catppuccin Mocha palette

# Main highlighting
typeset -g FAST_HIGHLIGHT[default]=none
typeset -g FAST_HIGHLIGHT[unknown-token]=fg=210,bold
typeset -g FAST_HIGHLIGHT[reserved-word]=fg=218
typeset -g FAST_HIGHLIGHT[subcommand]=fg=218
typeset -g FAST_HIGHLIGHT[alias]=fg=150
typeset -g FAST_HIGHLIGHT[suffix-alias]=fg=150
typeset -g FAST_HIGHLIGHT[builtin]=fg=117
typeset -g FAST_HIGHLIGHT[function]=fg=117
typeset -g FAST_HIGHLIGHT[command]=fg=117
typeset -g FAST_HIGHLIGHT[precommand]=fg=117,underline
typeset -g FAST_HIGHLIGHT[commandseparator]=fg=223
typeset -g FAST_HIGHLIGHT[hashed-command]=fg=117
typeset -g FAST_HIGHLIGHT[path]=fg=147
typeset -g FAST_HIGHLIGHT[path_pathseparator]=
typeset -g FAST_HIGHLIGHT[globbing]=fg=117
typeset -g FAST_HIGHLIGHT[history-expansion]=fg=218
typeset -g FAST_HIGHLIGHT[single-hyphen-option]=fg=150
typeset -g FAST_HIGHLIGHT[double-hyphen-option]=fg=150
typeset -g FAST_HIGHLIGHT[back-quoted-argument]=none
typeset -g FAST_HIGHLIGHT[single-quoted-argument]=fg=223
typeset -g FAST_HIGHLIGHT[double-quoted-argument]=fg=223
typeset -g FAST_HIGHLIGHT[dollar-quoted-argument]=fg=223
typeset -g FAST_HIGHLIGHT[rc-quote]=fg=150
typeset -g FAST_HIGHLIGHT[dollar-double-quoted-argument]=fg=150
typeset -g FAST_HIGHLIGHT[back-double-quoted-argument]=fg=150
typeset -g FAST_HIGHLIGHT[back-dollar-quoted-argument]=fg=150
typeset -g FAST_HIGHLIGHT[assign]=none
typeset -g FAST_HIGHLIGHT[redirection]=fg=223,bold
typeset -g FAST_HIGHLIGHT[comment]=fg=108,italic
typeset -g FAST_HIGHLIGHT[named-fd]=none
typeset -g FAST_HIGHLIGHT[numeric-fd]=none
typeset -g FAST_HIGHLIGHT[arg0]=fg=150

# Additional for brackets and variables
typeset -g FAST_HIGHLIGHT[bracket-error]=fg=210,bold
typeset -g FAST_HIGHLIGHT[cursor-matchingbracket]=fg=223,bold
typeset -g FAST_HIGHLIGHT[bracket-level-1]=fg=117,bold
typeset -g FAST_HIGHLIGHT[bracket-level-2]=fg=150,bold
typeset -g FAST_HIGHLIGHT[bracket-level-3]=fg=218,bold
typeset -g FAST_HIGHLIGHT[bracket-level-4]=fg=223,bold
typeset -g FAST_HIGHLIGHT[variable]=fg=147

# Catppuccin Mocha ZSH autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=108"

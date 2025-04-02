# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%{$fg[green]%}%~%<<%{$reset_color%} $ "

VISUAL=nvim; export VISUAL
EDITOR=nvim; export EDITOR

# Export DOTFILES variable
export DOTFILES="$HOME/.config"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000

# Setup history file and create if needed
mkdir -p ~/.history
touch ~/.history/zsh
HISTFILE=~/.history/zsh

# Keep command history when opening a new window
setopt extended_history
setopt share_history
setopt inc_append_history
setopt hist_ignore_dups

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Load aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Added by Zinit's installer
if [[ ! -f $HOME/.config/zsh/.zinit/bin/zi.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.config/zsh/.zinit" && command chmod g-rwX "$HOME/.config/zsh/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.config/zsh/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "$HOME/.config/zsh/.zinit/bin/zi.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
# End of Zinit installer's chunk

# zsh auto suggestion config
zinit light zsh-users/zsh-autosuggestions

# Bind ctrl+space to accept auto suggestion
bindkey '^@' autosuggest-accept
bindkey '^ ' autosuggest-accept

# history search config
zinit load zdharma-continuum/history-search-multi-word

bindkey "^R" history-search-multi-word

zinit light zdharma/fast-syntax-highlighting
zinit light romkatv/powerlevel10k
zinit light ael-code/zsh-colored-man-pages
zinit light MichaelAquilina/zsh-you-should-use

# Load custom hooks
[ -f "$HOME/.config/zsh/hooks" ] && source "$HOME/.config/zsh/hooks"

# direnv
if [ ! command -v direnv &> /dev/null ]; then
    eval "$(direnv hook zsh)"
fi

setopt PROMPT_SUBST

show_virtual_env() {
  if [[ -n "$VIRTUAL_ENV" && -n "$DIRENV_DIR" ]]; then
    echo "($(basename $VIRTUAL_ENV))"
  fi
}
PS1='$(show_virtual_env)'$PS1

# Configure autosuggest
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Setup nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
# Add .local/bin to path for pip
export PATH="$PATH:$HOME/.local/bin"
# Add path for rust
export PATH="$PATH:$HOME/.cargo/bin"
# Add path for home dir bin
export PATH="$PATH:$HOME/bin"
# Add path for neovim bin
export PATH="$PATH:$HOME/bin/nvim-linux64/bin"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Enable 1password plugins
[[ ! -f ~/.config/op/plugins.sh ]] || source ~/.config/op/plugins.sh


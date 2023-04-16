bindkey -v
zstyle :compinstall filename '/home/ani/.zshrc'

## AUTOEXEC STARTX
#if [[ "$(tty)" = "/dev/tty1" ]]; then
#	sway --unsupported-gpu
#fi

# History
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST

# Auto complete
autoload -U history-searchend
bindkey "^[[A" history-beginning-search-backward 
bindkey "^[[B" history-beginning-search-forward 
# Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select matcher-list 'm:{a-z}={A-Za-z}'

# Completion menus
zmodload zsh/complist

# Alias
alias ls="ls --color"
alias nv="nvim"
alias mx="alsamixer"
alias sz="du -m --si"

# Prompt
export PS1=" %F[%f %U%F{magenta}%n%f @ %F{cyan}%~%f%u %F]%f "

# Defaults
export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/qutebrowser
## PATH
export PATH=$PATH:/home/lark/.local/bin:$PATH

## Plugins
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

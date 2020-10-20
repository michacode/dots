source ~/.alias

#[[ -f ~/.alias ]] && . ~/.alias

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' completions 0
zstyle ':completion:*' glob 1
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' matcher-list '' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' max-errors 0
zstyle ':completion:*' original true
zstyle ':completion:*' substitute 0
zstyle :compinstall filename '/home/micha/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500000
SAVEHIST=500000
setopt autocd extendedglob nomatch
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

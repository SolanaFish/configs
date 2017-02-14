ZSH_THEME="powerlevel9k/powerlevel9k.zsh-theme"
#ZSH_THEME="powerline"


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/solana/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit
# End of lines added by compinstall

prompt fade blue
neofetch
alias lsa="ls -alh"
alias publicip="wget http://ipinfo.io/ip -qO -"
alias gits="git status"
alias gitc="git commit"
alias gita="git add"
source /usr/share/zsh/scripts/antigen/antigen.zsh

antigen theme bhilburn/powerlevel9k powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MODE='compatible'
antigen apply

##############################################
# general functions
#
function peco-select-history() {
  BUFFER="$(\history -n 1 | tac | peco)"
  CURSOR=$#BUFFER
  zle accept-line
  # zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

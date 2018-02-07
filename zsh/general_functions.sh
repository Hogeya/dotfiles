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

# function peco-select-directory() {
#   BUFFER="cd $(\ls -d */ | peco)"
#   CURSOR=$#BUFFER
#   zle accept-line
# }
# zle -N peco-select-directory
# bindkey '' peco-select-directory

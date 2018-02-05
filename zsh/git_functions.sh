##############################################
# git functions
#
function peco-git-add() {
  local SELECTED_FILE_TO_ADD="$(git st --porcelain | peco --query "$LBUFFER" | awk -F ' ' '{print $NF}' )"
  if [ -n "$SELECTED_FILE_TO_ADD" ]; then
    BUFFER="git add $(echo "$SELECTED_FILE_TO_ADD" | tr '\n' ' ')"
    CURSOR="$#BUFFER"
  fi
  zle accept-line
  # zle clear-screen
}
zle -N peco-git-add
bindkey "^ga" peco-git-add

function peco-git-branch() {
  local SELECTED_BRANCH=$(git br -a | sed 's/^\*/ /' | awk '{ print $l }' | peco)
  if [ -n "$SELECTED_BRANCH" ]; then
    BUFFER="git co $SELECTED_BRANCH"
    CURSOR="$#BUFFER"
  fi
  zle accept-line
}
zle -N peco-git-branch
bindkey "^gb" peco-git-branch

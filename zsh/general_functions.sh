##############################################
# general functions
#
function peco-select-history() {
  local SELECTED_HISTORY="$(\history -n 1 | tac | peco)"
  if [ -n "$SELECTED_HISTORY" ]; then
    BUFFER="$SELECTED_HISTORY"
    CURSOR=$#BUFFER
  fi
  zle accept-line
  # zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

function peco-select-ls() {
  local SELECTED_LIST="$(\ls | peco)"
  if [ -n "$SELECTED_LIST" ]; then
    if [ -n "$LBUFFER" ]; then
      local new_left="${LBUFFER%\ } $SELECTED_LIST"
    else
      local new_left="$SELECTED_LIST"
    fi
    BUFFER=${new_left}${RBUFFER}
    CURSOR=${#new_left}
  fi
  zle accept-line
}
zle -N peco-select-ls
bindkey '^l' peco-select-ls

function peco-tree-vim() {
  local SELECTED_FILE=$(tree --charset=o -f | peco | tr -d '\||`|-' | xargs echo)
  if [ -n "$SELECTED_FILE" ]; then
    if [ -n "$LBUFFER" ]; then
      local new_left="${LBUFFER%\ } $SELECTED_FILE"
    else
      local new_left="$SELECTED_FILE"
    fi
    BUFFER="${new_left}${RBUFFER}"
    CURSOR="${#new_left}"
  fi
  zle accept-line
}
zle -N peco-tree-vim
bindkey "^t" peco-tree-vim

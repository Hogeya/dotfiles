##############################################
# general functions
#
function fzf-select-history() {
  local SELECTED_HISTORY="$(\history -n 1 | tac | fzf --multi )"
  if [ -n "$SELECTED_HISTORY" ]; then
    BUFFER="$SELECTED_HISTORY"
    CURSOR=$#BUFFER
  fi
  zle accept-line
  # zle clear-screen
}
zle -N fzf-select-history
bindkey '^r' fzf-select-history

function fzf-select-ls() {
  local SELECTED_FILE=$(tree --charset=o -f | fzf --multi | tr -d '\||`|-' | xargs echo)
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
zle -N fzf-select-ls
bindkey "^l" fzf-select-ls

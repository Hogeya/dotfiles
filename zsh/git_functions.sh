##############################################
# git functions
#
function fzf-git-add() {
  local SELECTED_FILE_TO_ADD="$(git st --porcelain | fzf --multi --query "$LBUFFER" | awk -F ' ' '{print $NF}' )"
  if [ -n "$SELECTED_FILE_TO_ADD" ]; then
    BUFFER="git add $(echo "$SELECTED_FILE_TO_ADD" | tr '\n' ' ') && git st"
    CURSOR="$#BUFFER"
  fi
  zle accept-line
}
zle -N fzf-git-add
bindkey " ga" fzf-git-add

function fzf-git-reset() {
  local SELECTED_FILE_TO_ADD="$(git st --porcelain | fzf --multi --query "$LBUFFER" | awk -F ' ' '{print $NF}' )"
  if [ -n "$SELECTED_FILE_TO_ADD" ]; then
    BUFFER="git reset $(echo "$SELECTED_FILE_TO_ADD" | tr '\n' ' ') && git st"
    CURSOR="$#BUFFER"
  fi
  zle accept-line
}
zle -N fzf-git-reset
bindkey " gr" fzf-git-reset

function fzf-git-checkout() {
  local SELECTED_BRANCH="$(git br -a | cut -b 3- | grep -v -- "->" | sed -e "s/remotes\/origin\///g" | fzf --multi | sed -e "s/\* //g")"
  if [ -n "$SELECTED_BRANCH" ]; then
    BUFFER="git co $(echo "$SELECTED_BRANCH" | tr '\n' ' ') && git st"
    CURSOR="$#BUFFER"
  fi
  zle accept-line
}
zle -N fzf-git-checkout
bindkey " gc" fzf-git-checkout

function fzf-git-branch-d() {
  local SELECTED_BRANCH="$(git br -a | cut -b 3- | grep -v -- "->" | fzf --multi | sed -e "s/\* //g")"
  if [ -n "$SELECTED_BRANCH" ]; then
    BUFFER="git br -D $(echo "$SELECTED_BRANCH" | tr '\n' ' ')"
    CURSOR="$#BUFFER"
  fi
  zle accept-line
}
zle -N fzf-git-branch-d
bindkey " gd" fzf-git-branch-d

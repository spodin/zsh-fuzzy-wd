#!/usr/bin/env zsh

#
# Adds fuzzy search for directories "warped" with WD Zsh plugin.
# Activates with [Control+B].
#

WD_CONFIG=${WD_CONFIG:-$HOME/.warprc}

fuzzy_wd() {
  # load warp points
  typeset -A points
  while read -r line
  do
    arr=(${(s,:,)line})
    key=${arr[1]}
    # join the rest, in case the path contains colons
    val=${(j,:,)arr[2,-1]}

    points[$key]=$val
  done < ${WD_CONFIG}

  # pipe warp points to fzf for selection
  selected=$(echo "${points[@]}" | tr ' ' '\n' | fzf --height ${FZF_TMUX_HEIGHT:-40%} --reverse)

  if [[ -n "$selected" ]]; then
    cd $(eval echo "${selected}")
  fi
}

fuzzy_wd_widget() {
  if [[ -e $WD_CONFIG ]]; then
    fuzzy_wd

    saved_buffer=$BUFFER
    saved_cursor=$CURSOR
    BUFFER=
    zle redisplay
    zle accept-line
  fi
}

restore_buffer() {
  BUFFER=$saved_buffer
  CURSOR=$saved_cursor
  saved_buffer=
  saved_cursor=1
}

zle -N fuzzy_wd_widget
zle -N restore_buffer

autoload -Uz add-zle-hook-widget
add-zle-hook-widget line-init restore_buffer

bindkey '^B' fuzzy_wd_widget

#!/usr/bin/env bash

current=$(tmux display-message -p '#S')
sessions=$(tmux list-sessions -F '#S')

for s in $sessions; do
  if [[ "$s" == "$current" ]]; then
    line+="#[fg=#ea6962,bg=default,bold] $s #[fg=#707880,bg=default]:"
  else
    line+="#[fg=#333333,bg=default] $s #[fg=#707880,bg=default]:"
  fi
done

line="${line%:}"

echo "$line"

#!/usr/bin/zsh

if command -v tmux 2> /dev/null && [[ -z "$TMUX" ]]; then
	tmux a -t "Main" || tmux new -s "Main"
fi

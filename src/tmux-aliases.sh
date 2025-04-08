#!/bin/bash

# this opens two panes horizontally in tmux in a session named '2tmux'
alias 2tmux='tmux new-session -s 2tmux \; split-window -h \; select-pane -t 0'

# this does the same as above except with 4 panes
alias 4tmux='tmux new-session -s 4tmux \; split-window -h \; select-pane -t 1 \; split-window -v \; select-pane -t 0 \; split-window -v \; select-pane -t 0'

#!/bin/bash

ssh -t vizzy@vizzy-desktop.local "tmux new-session -d -s vizzy_startup"
ssh -t vizzy@vizzy-desktop.local "tmux split-window -v"
ssh -t vizzy@vizzy-desktop.local "tmux split-window -h"
ssh -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_startup.2 'roscore' ENTER"
ssh -t vizzy@vizzy-desktop.local "tmux attach"

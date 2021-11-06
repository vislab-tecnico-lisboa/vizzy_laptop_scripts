#!/bin/bash

ssh -t vizzy@vizzy-desktop.local "tmux new-session -d -s vizzy_startup"
ssh -t vizzy@vizzy-desktop.local "tmux split-window -v"
ssh -t vizzy@vizzy-desktop.local "tmux split-window -h"
ssh -t vizzy@vizzy-desktop.local "tmux selectp -t 0"
ssh -t vizzy@vizzy-desktop.local "tmux split-window -h"
ssh -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_startup.2 'roscore' ENTER"

#Wait 5 seconds for roscore to run and then launch yarpserver
sleep(5)
ssh -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_startup.3 'yarpserver --ros' ENTER"

ssh -t vizzy@vizzy-desktop.local "tmux attach"

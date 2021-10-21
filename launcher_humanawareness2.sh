#!/bin/bash

ssh -t vizzy@vizzy-desktop.local "ssh -t vizzy@vizzybrain.local 'tmux new-session -d -s humanawareness2'"
ssh -t vizzy@vizzy-desktop.local "ssh -t vizzy@vizzybrain.local \"tmux send-keys -t humanawareness2 'workon ros-py2; roslaunch human_awareness_interaction human_interaction.launch' ENTER\""

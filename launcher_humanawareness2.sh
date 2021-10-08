#!/bin/bash

ssh -t vizzy@vizzybrain.local "tmux new-session -s -d humanawareness2"
ssh -t vizzy@vizzybrain.local "tmux send-keys -t humanawareness2 'workon ros-py2; roslaunch human_awareness_interaction human_interaction.launch' ENTER"

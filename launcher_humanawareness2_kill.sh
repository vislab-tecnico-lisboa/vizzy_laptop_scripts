#!/bin/bash

ssh -t vizzy@vizzy-desktop.local "ssh -t vizzy@vizzybrain.local 'tmux send-keys -t humanawareness2 C-c'"
ssh -t vizzy@vizzy-desktop.local "ssh -t vizzy@vizzybrain.local 'tmux kill-session -t humanawareness2'"

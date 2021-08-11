#!/bin/bash

ssh -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_startup.1 '/home/vizzy/vizzy-desktop-scripts/launch_controllers.sh' ENTER"

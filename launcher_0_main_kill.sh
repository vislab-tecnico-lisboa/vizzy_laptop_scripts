#!/bin/bash

if ! ssh -o ConnectTimeout=10 -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_main_launcher C-c"; then
    SUCCESS=false
fi
if ! $SUCCESS; then
    echo "ssh failed to connect while shutting down the main ROS launcer... exiting script";
    echo "You have to kill the processes manually. Open the 'vizzy_main_launcher tmux session at vizzy-desktop'";
    read -p "Press [ENTER] key to close this window..." ENTER
    exit -1;
fi

if ! ssh -o ConnectTimeout=10 -t vizzy@vizzy-desktop.local "tmux kill-session -t vizzy_main_launcher"; then
    $SUCCESS=false
fi

if $SUCCESS; then
    echo "All cleaned up! Bye!"
    read -p "Press [ENTER] key to close this window..." ENTER
else
    echo "Failed to kill tmux vizzy_main_launcher session..."
    read -p "Press [ENTER] key to close this window..." ENTER
fi


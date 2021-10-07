#!/bin/bash

SUCCESS=true
if ! ssh -o ConnectTimeout=10 -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_startup.1 '/home/vizzy/vizzy-desktop-scripts/kill_controllers.sh' ENTER"; then
    SUCCESS=false
fi

if ! $SUCCESS; then
    echo "ssh failed to connect while killing controllers... exiting script";
    echo "You have to kill the processes manually. Open the 'vizzy_startup tmux session at vizzy-desktop'";
    read -p "Press [ENTER] key to close this window..." ENTER
    exit -1;
fi

sleep 5

if ! ssh -o ConnectTimeout=10 -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_startup.0 C-c"; then
    SUCCESS=false
fi
if ! $SUCCESS; then
    echo "ssh failed to connect while killing yarprobotinterface... exiting script";
    echo "You have to kill the processes manually. Open the 'vizzy_startup tmux session at vizzy-desktop'";
    read -p "Press [ENTER] key to close this window..." ENTER
    exit -1;
fi


sleep 15

if ! ssh -o ConnectTimeout=10 -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_startup.2 C-c"; then
    SUCCESS=false
fi
if ! $SUCCESS; then
    echo "ssh failed to connect while killing roscore... exiting script";
    echo "You have to kill the processes manually. Open the 'vizzy_startup tmux session at vizzy-desktop'";
    read -p "Press [ENTER] key to close this window..." ENTER
    exit -1;
fi

sleep 5

if ! ssh -o ConnectTimeout=10 -t vizzy@vizzy-desktop.local "tmux kill-session -t vizzy_startup"; then
    $SUCCESS=false
fi

if SUCCESS; then
    echo "All cleaned up! Bye!"
    read -p "Press [ENTER] key to close this window..." ENTER
else
    echo "Failed to kill temux vizzy_startup session..."
    read -p "Press [ENTER] key to close this window..." ENTER
fi

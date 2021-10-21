#!/bin/bash
ssh -t vizzy@vizzy-desktop.local "tmux new-session -d -s network"
ssh -t vizzy@vizzy-desktop.local "tmux send-keys -t network 'connect_VPN_ISR' ENTER"

ssh -t vizzy@vizzy-desktop.local "ping -c 7 vizzybrain.local"
read -p "Press [ENTER] to close this window" ENTER
ssh -t vizzy@vizzy-desktop.local "tmux kill-session -t network"
exit 0

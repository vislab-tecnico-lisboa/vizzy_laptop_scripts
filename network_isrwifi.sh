#!/bin/bash
ssh -t vizzy@vizzy-desktop.local "tmux new-session -d -s network"
ssh -t vizzy@vizzy-desktop.local "tmux send-keys -t network 'internet_wifi_isr' ENTER"

read -p "Change the laptop's network to one that has vizzy-desktop (ISR or one with ISRs VPN) and press [ENTER]" ENTER
ping -c 7 vizzy-desktop.local
read -p "Press [ENTER] to close this window. If the ping was high run this script again (known bug)" ENTER
ssh -t vizzy@vizzy-desktop.local "tmux kill-session -t network"
exit 0

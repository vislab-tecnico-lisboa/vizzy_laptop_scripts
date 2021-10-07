#!/bin/bash

openclose(){
  "$@" &
  disown
  exit
}

ssh -t vizzy@vizzy-desktop.local "tmux new-session -d -s vizzy_main_launcher"
ssh -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_main_launcher 'roslaunch vizzy_launch vizzy_real.launch' ENTER"

openclose rviz

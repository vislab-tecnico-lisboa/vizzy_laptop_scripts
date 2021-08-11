#!/bin/bash

ssh -t vizzy@vizzy-desktop.local "tmux send-keys -t vizzy_startup.0 'yarprobotinterface' ENTER"

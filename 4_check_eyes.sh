#!/bin/bash

ssh -X vizzy@vizzybrain.local /bin/bash << EOF
ueyecameramanager&
disown
exit
EOF

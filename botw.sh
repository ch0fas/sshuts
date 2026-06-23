#!/bin/bash
#
# BOTW, a script that runs the commands I need to connect my Switch Pro Controller to my PC to play Breath of the Wild on an emulator

# Enables the joycond driver
sudo systemctl enable --now joycond

echo "Connect the controller, you have 10 seconds!"
sleep 10 # To re-connect the controller to the PC

joycond-cemuhook
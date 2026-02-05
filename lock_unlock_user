#!/bin/bash

read -p "Enter username: " USER
read -p "Choose action (lock/unlock): " ACTION

if [ "$ACTION" = "lock" ]; then
  usermod -L "$USER"
  echo "User $USER locked"
elif [ "$ACTION" = "unlock" ]; then
  usermod -U "$USER"
  echo "User $USER unlocked"
else
  echo "Invalid action. Choose lock or unlock."
fi

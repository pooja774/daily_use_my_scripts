#!/bin/bash
read -p "Enter username: " USER

if id "$USER" &>/dev/null; then
  echo "User exists"
else
  echo "User does not exist"
fi

#!/bin/bash

FILE="users.txt"
LOG="/var/log/user_mgmt.log"  ##creating this file to see logs when i run this script this is custom log file made by me to see if any user is misisng or if any isue comes 

while read USER; do
  id "$USER" &>/dev/null && /
  ##The script is NOT directly reading /etc/passwd. It is using the id command, and id does the checking for us.
echo "$(date): $USER already exists" >> "$LOG" && continue
useradd -m "$USER"
  echo "$(date): $USER created" >> "$LOG"
done < "$FILE"

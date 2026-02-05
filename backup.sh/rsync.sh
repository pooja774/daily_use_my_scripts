#!/bin/bash

FILE="/tmp/etc_backup_$(date +"%F_%H-%M-%S").tar.gz"

tar -czf "$FILE" /etc

rsync -av "$FILE" user@REMOTE_IP:/backup/

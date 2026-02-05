
#!/bin/bash

SOURCE="/etc"
DEST="/tmp/backup"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p $DEST 
#it will crate file if its not present but if it is present by 
#default mkdir will notcreate same folder with same name so it will not  overwrite 
tar -cvf $DEST/etc_backup_$DATE.tar $SOURCE

################more simple version#######################

#!/bin/bash

FILE="/tmp/etc_backup_$(date +"%F_%H-%M-%S").tar.gz"

tar -czf "$FILE" /etc

#################more simple version #########################

# tar -czvf /tmp/etc_backup_$(date +"%F_%T").tar.gz /etc
#is is simple version of logic 
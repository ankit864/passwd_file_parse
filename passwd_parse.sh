#!/bin/bash

#IFS for internal field separator, /etc/passwd file contain 7 fields
#username, password, UID, GID, UID info, home dir, Shell

while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do
 sum_of_third_field=$(( $sum_of_third_field + $f3 ))
done < $1
echo "sum of third field : $sum_of_third_field"

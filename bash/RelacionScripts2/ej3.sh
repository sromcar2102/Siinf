#!/bin/sh

if [ $# -ne 1 ]; then
  echo "No se ha dado como parámetro ningún UID"
  exit 1
fi

uid=$1

username=$(grep "^.*:.*:$uid:" /etc/passwd | cut -d: -f1)

if [ -z "$username" ]; then
  echo "El identificador de usuario $uid no corresponde a ningún usuario."
else
  echo "El identificador de usuario corresponde al usuario $username"
fi





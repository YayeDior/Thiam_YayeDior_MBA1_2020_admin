#!/bin/bash
if [ -e fichier.txt ]
then
    echo "Le fichier existe"
else
    echo "le fichier n'existe pas"

if [ -z "$1" ]
then
    source fichier.txt
else
    source $1

#donner le droit de lecture et d'écriture au groupe et aux autres
chmod go+rw fichier.txt
#changer de groupe
chgrp -R users fichier.txt
#retirer le droit de lecture aux autres
chmod o-r fichier.txt
#changer d'utilisateur
chown dior:users fichier.txt


fi
fi 


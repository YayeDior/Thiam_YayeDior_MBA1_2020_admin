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

# Changement du propriétaire
chown $newOwner:$newOwnernewGroup fichier.txt 
fi
fi


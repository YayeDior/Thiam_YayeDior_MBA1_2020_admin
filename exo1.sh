#!/bin/bash
if [ -f $fichier ]; then
   echo "$fichier existe"
else
   echo "$fichier n'est pas present"
fi

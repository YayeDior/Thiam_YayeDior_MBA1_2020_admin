#!/bin/bash
 if [ $# = 0 ]
 then
   echo "le premier argument est un nom de fichier"
echo "choix:"
read choix

case $choix in
*) read fichier.txt
esac

case $choix in 
*)cp fichier.txt /tmp/script
esac

case $choix in
*)rm fichier.txt

esac

else

exit 

fi








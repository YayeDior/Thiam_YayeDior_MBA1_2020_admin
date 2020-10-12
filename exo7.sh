#!/bin/bash
read -p "Veuillez entrer le nom du fichier : ? " new_fichier
id -u "$new_fichier"> /dev/null 2>&1
if [ "$?" == "0" ]; then
    echo "fichier existe"
else
    echo "votre fichier n'existe pas."
fi
echo " Supprimer ou créer un fichier ?"
echo " Taper x pour supprimer / Taper c pour créer :"
read choix
if [ $choix = "c" ] ;
then
echo "Entrer le nom du fichier à creer :"
read new_fichier
adduser $new_fichier
echo " Le fichier  $new_fichier a bien été crée !"
echo "Appuyer sur la touche <Entrée> pour revenir au menu..."
read touche
case $touche in
*)echo "**** Reprise du script... ****";;
esac
else 
if [ $choix = "x" ]; 
then 
echo "Donner le nom du fichier à supprimer :" 
read utildel 
userdel -r $utildel 
echo  " La suppression de fichier $utildel est confirmée" 
echo "Appuyer sur la touche <Entrée> pour revenir au menu..." 
read touche 
case $touche in 
*)echo -e "**** Reprise du script... ****";; 
esac 
else 
exit 0 
fi 
fi 


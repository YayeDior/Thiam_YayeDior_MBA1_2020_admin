
#!/bin/bash
read -p " Entrez votre nom d'utilisateur ici : ? " new_user
id -u "$new_user"> /dev/null 2>&1
if [ "$?" == "0" ]; then
    echo "utilisateur valide"
else
    echo "votre nom d'utilisateur n'est pas valide."
fi    
echo " Supprimer ou créer un utilisateur ?" 
echo " Taper x pour supprimer / Taper c pour créer :" 
read choix 
if [ $choix = "c" ] ; 
then 
echo"Entrer le nom  de l'utilisateur souhaité :" 
read new_user  
adduser $new_user
echo " L'utilisateur $user à bien été crée !" 
echo "Appuyer sur la touche <Entrée> pour revenir au menu..." 
read touche 
case $touche in 
*)echo"Reprenons le script";; 
esac 
else 
if [ $choix = "x" ]; 
then 
echo "Donner le nom de l'utilisateur à supprimer :" 
read utildel 
userdel -r $utildel 
echo "La suppression de l'utilisateur $utildel est confirmée" 
echo "Appuyer sur la touche <Entrée> pour revenir au menu..." 
read touche 
case $touche in 
*)echo "Reprenons le script";; 
esac 
else 
exit 0 
fi 
fi


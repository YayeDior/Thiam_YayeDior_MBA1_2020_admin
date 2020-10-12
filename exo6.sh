 #!/bin/bash
read -p "enter group name: " group
   if grep -q $group /etc/group
    then
         echo "group exists"
    else
         echo "group does not exist"
    fi
echo " Supprimer ou créer un groupe ?" 
echo " Taper x pour supprimer / Taper c pour créer :" 
read choix 
if [ $choix = "c" ] ; 
then 
echo "Entrer le nom du groupe souhaité :" 
read group 
groupadd $group 
echo " Le group $group à bien été crée !" 
echo "Voulez-vous vérifier en regardant le fichier /etc/group ? (y/n)" 
read rep 
if [ $rep = "y" ] ; 
then 
vi /etc/group 
else 
echo "Appuyer sur la touche <Entrée> pour revenir au menu..." 
read touche 
case $touche in 
*)echo "Reprenons le srcipt";; 
esac 
menu_utilisateur 
fi 
else 
if [ $choix = "x" ]; 
then 
echo "Donner le nom du groupe à supprimer :" 
read group 
groupdel $group 
echo " La suppression du group $group est confirmée" 
echo "Voulez-vous vérifier en regardant le fichier /etc/group ? (y/n)" 
read rep 
if [ $rep = "y" ] ; 
then 
vi /etc/group 
else 
echo "Appuyer sur la touche <Entrée> pour revenir au menu..." 
read touche 
case $touche in 
*)echo " Reprenons le script";; 
esac 
menu_utilisateur 
fi 
else 
exit 0 
fi 
fi


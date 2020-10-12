#!/bin/bash
read -p "Veuillez entrer votre nom d'utilisateur ici : ? " new_user
id -u "$new_user"> /dev/null 2>&1
if [ "$?" == "0" ]; then
    echo "utilisateur valide"
else
    echo "votre nom d'utilisateur n'est pas valide."
fi


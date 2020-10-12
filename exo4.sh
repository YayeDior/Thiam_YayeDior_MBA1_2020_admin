 #!/bin/bash
read -p "enter group name: " group
   if grep -q $group /etc/group
    then
         echo "group exists"
    else
         echo "group does not exist"
    fi

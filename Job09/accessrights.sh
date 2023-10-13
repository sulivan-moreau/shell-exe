#!/bin/bash

# Chemin vers votre fichier CSV
fichier_csv="/Users/sulivanmoreau/shell-exe/Job09/Shell_Userlist.csv"

# Lecture fichier csv
while IFS=',' read -r id prenom nom mdp role; do

# Créez un nouvel utilisateur
dscl . -m -c "$prenom $nom" -s /bin/bash "$prenom"

# Rôle utilisateur
if [ "$role" == "Admin" ]; then
        usermod -aG sudo "$prenom"
fi

done < "$fichier_csv"


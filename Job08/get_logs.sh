#!/bin/bash

#Variable
user="E0E577C7-6277-43AF-8504-D3275A1744D3"
chemin="/Users/sulivanmoreau/shell-exe/Job08"
date=$(date '+%d-%m-%Y-%H:%M')

#Création fichier et enregistrement dans Job08
touch "$chemin/number_connection_$date"

#Recherche et compter les logs et enregistrer dans le fichier
nombre_connection=$(grep "$user" /var/log/system.log | wc -l)
echo "$nombre_connection" > "$chemin/number_connection_$date"



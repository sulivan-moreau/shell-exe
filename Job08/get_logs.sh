#!/bin/bash

#Variable
user="E0E577C7-6277-43AF-8504-D3275A1744D3"
chemin="/Users/sulivanmoreau/shell-exe/Job08/Backup"
date=$(date '+%d-%m-%Y-%H:%M')

#Création fichier et enregistrement dans Job08
touch "$chemin/number_connection_$date"

#Recherche et compter les logs et enregistrer dans le fichier
nombre_connection=grep "$user" /var/log/system.log | wc -l > "$chemin/number_connection_$date"

#Archive en Tar 
tar -czf "$chemin/number_connection_$date.tar.gz" "$chemin/number_connection_$date"

#Suppresion fichier
rm "$chemin/number_connection_$date" 

echo "ca marche bg"

#!/bin/bash

# Récupérer l'argument passé
argument="$1"

# Vérifier la valeur de l'argument et afficher le message correspondant
if [ "$1" = "Hello" ]; then
    echo "Bonjour, je suis un script !"
elif [ "$1" = "Bye" ]; then
    echo "Au revoir et bonne journée !"
fi

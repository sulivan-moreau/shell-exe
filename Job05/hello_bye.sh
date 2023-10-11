#!/bin/bash

# Vérifier si un argument a été passé
if [ $# -ne 1 ]; then
    echo "Usage: $0 [Hello|Bye]"
    exit 1
fi

# Récupérer l'argument passé
argument="$1"

# Vérifier la valeur de l'argument et afficher le message correspondant
if [ "$argument" = "Hello" ]; then
    echo "Bonjour, je suis un script !"
elif [ "$argument" = "Bye" ]; then
    echo "Au revoir et bonne journée !"
else
    echo "Argument invalide. Utilisation : $0 [Hello|Bye]"
    exit 1
fi
# Récupérer l'argument passé
argument="$1"

# Vérifier la valeur de l'argument et afficher le message correspondant
if [ "$1" = "Hello" ]; then
    echo "Bonjour, je suis un script !"
elif [ "$1" = "Bye" ]; then
    echo "Au revoir et bonne journée !"

#!/bin/bash

# Récupérer les arguments
Nombre1="$1"
Symbole="$2"
Nombre2="$3"

if [ "$Symbole" = "+" ]; then
    Resultat=$((Nombre1 + Nombre2))
    echo "Résultat : $Resultat"
elif [ "$Symbole" = "-" ]; then
    Resultat=$((Nombre1 - Nombre2))
    echo "Résultat : $Resultat"
elif [ "$Symbole" = "/" ]; then
    Resultat=$((Nombre1 / Nombre2))
    echo "Résultat : $Resultat"
elif [ "$Symbole" = "x" ]; then
    Resultat=$((Nombre1 * Nombre2))
    echo "Résultat : $Resultat"
else
    echo "Opérateur invalide. Utilisation : $0 Nombre1 [+|-|x|/] Nombre2"
fi

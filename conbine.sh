#!/bin/bash

# Définir les noms des fichiers source
fichier1="fichier1.txt"
fichier2="fichier2.txt"
fichier3="fichier3.txt"

# Définir le nom du fichier de sortie
fichier_sortie="fichier_final.txt"

# Vérifier si les fichiers source existent
if [[ ! -f $fichier1 || ! -f $fichier2 || ! -f $fichier3 ]]; then
  echo "Erreur : Un ou plusieurs fichiers source sont manquants."
  exit 1
fi

# Vider ou créer le fichier de sortie
> "$fichier_sortie"

# Ajouter le contenu de chaque fichier source au fichier de sortie
for fichier in "$fichier1" "$fichier2" "$fichier3"; do
  echo "--- Contenu de $fichier ---" >> "$fichier_sortie"
  cat "$fichier" >> "$fichier_sortie"
  echo -e "\n" >> "$fichier_sortie" # Ajouter une ligne vide pour la séparation
done

echo "Les contenus ont été combinés dans $fichier_sortie avec succès !"

#!/bin/bash

CONFIG_DIR=${1:-"/etc/motion"}
CONFIG_FILE="$CONFIG_DIR/motion.conf"

echo "Vérification du fichier de configuration..."
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Erreur : Aucun fichier motion.conf trouvé dans $CONFIG_DIR"
    exit 1
fi

echo "Fichier motion.conf trouvé : $CONFIG_FILE"

motion -c "$CONFIG_FILE"


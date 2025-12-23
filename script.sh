#!/bin/bash

DIR_NAME="$1"

if [ -z "$DIR_NAME" ]; then
    echo "Kļūda: Lūdzu norādi direktorijas nosaukumu!"
    echo "Piemērs: ./script.sh projekts"
    exit 1
fi

if [ -d "$DIR_NAME" ]; then
    echo "Direktorija '$DIR_NAME' jau eksistē."
else
    mkdir "$DIR_NAME"
    echo "Direktorija '$DIR_NAME' izveidota."
fi

sleep 5

wget 

echo "Darbība pabeigta!"

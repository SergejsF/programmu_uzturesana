#!/bin/bash

DIR_NAME="$1"

if [ -z "$DIR_NAME" ]; then
    echo "Kļūda: lūdzu norādiet direktorijas nosaukumu lejupielādei."
    echo "Piemērs: ./script.sh downloads"
    exit 1
fi

if [ -d "$DIR_NAME" ]; then
    echo "Direktorija '$DIR_NAME' jau eksistē."
else
    mkdir "$DIR_NAME"
    echo "Direktorija '$DIR_NAME' izveidota."
fi

sleep 2
echo "Sākta faila lejupielāde..."
wget -P "$DIR_NAME" https://raw.githubusercontent.com/SergejsF/programmu_uzturesana/main/images/bash.gif
echo "Fails veiksmīgi lejupielādēts $DIR_NAME direktorijā."
sleep 2

FILE="$DIR_NAME/bash.gif"
sips -z 300 300 "$FILE"
open "$FILE"
sleep 5
osascript -e 'tell application "Preview" to close windows'

echo "Mape $DIR_NAME un tās saturs tiks dzēsts."
read -p "Vai tiešām vēlaties dzēst? (Y/N): " ANSWER

if [[ "$ANSWER" == "Y" || "$ANSWER" == "y" ]]; then
    echo "Mape tiks dzēsta pēc 5 sekundēm..."
    sleep 5
    rm -r "$DIR_NAME"
    echo "Mape '$DIR_NAME' ir dzēsta."
else
    echo "Dzēšana atcelta. Mape netika dzēsta."
fi

echo "Darbība pabeigta!"

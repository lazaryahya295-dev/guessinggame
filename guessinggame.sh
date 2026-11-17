#!/usr/bin/env bash
# File: guessinggame.sh

function ask_guess {
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read guess
}

file_count=$(ls -A | wc -l)
file_count=$((file_count))

ask_guess

while [[ $guess -ne $file_count ]]
do
    if [[ $guess -lt $file_count ]]
    then
        echo "Votre estimation est trop basse. Essayez encore :"
    else
        echo "Votre estimation est trop élevée. Essayez encore :"
    fi
    read guess
done

echo "Félicitations ! Vous avez deviné le nombre exact de fichiers ($file_count)."

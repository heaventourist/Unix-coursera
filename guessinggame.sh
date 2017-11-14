#! /bin/bash
#File: guessinggame.sh

filenumber=$(ls | wc -l)

function compare {
    if [[ $input -gt $filenumber ]]
    then
        echo "Your answer is too high"
    elif [[ $input -lt $filenumber ]]
    then
        echo "Your answer is too low"
    else
        echo "Congratulations! You are right!"
        return 1
    fi
    return 0
}

while true
do
    echo "How many files are in the current directory?"
    read input
    compare
    if [[ $? -eq 1 ]]
    then
        break
    fi
done

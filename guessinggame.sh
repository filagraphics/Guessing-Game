#!/usr/bin/env bash

function guess{
    answer=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please Enter Your Guess Number ?"
        read  number
        if [ $number -lt $answer ]
        then
            echo "Your Guess is Less then the Exact number"
        elif [ $number -gt $answer ]
        then
            echo "Your Guess is Greater then the Exact number"
        else
            echo " Congratulation,You are Exactly Correct!"
        break;
        fi
    done
}
echo "Guess the files number in the current directory!"
guess

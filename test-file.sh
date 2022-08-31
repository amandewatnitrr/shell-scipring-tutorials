#!/bin/env bash

valid=0

while [ $valid -eq 0 ]
    do
        read -p "Enter your name and age: " name age
        if [[  (-z $name) || (-z $age) ]]
            then
                echo "Name or Age Missing Re-enter..."
                continue
        elif [[ ! $name =~ ^[A-Za-Z]+$ ]]
            then
                echo "Name contain in-valid character...Re-try"
                continue
        elif [[ ! $age =~ ^[0-9]+$ ]]
            then
                echo "Age can only contain digits/number... Re-try"
                continue
        fi
        valid=1
done

echo "Your name is $name and age is $age."
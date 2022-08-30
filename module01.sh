#!/bin/env bash

array=$@

for e in $array
    do
        if [ $e = "Smruti" ]
            then
                continue
        fi

        if [ $e = "Harshit" ]
            then
                echo "$e dealing in bitcoins"
                break

        else
            echo "$e"

        fi
done
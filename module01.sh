#!/bin/env bash
name=$1
psrd=$2
access=$3
_date=$(date)
_time=$(time)
_pwd=$(pwd)

if [ $psrd = "akd1301" ] &&  [ $access -ge 1 ]
    then
        echo "last updated by $name - $_date $_time $_pwd"
    else
        echo "Access denied to $name - $_date $_time . Check Password or Authourized Personal"
fi
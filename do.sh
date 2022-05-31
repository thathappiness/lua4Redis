#!/bin/bash

echo "--------Task start----------"
time=$(date "+%Y-%m-%d %H:%M:%S")
echo "start time: ${time}"

printf "\n"

echo "> current shell script: $0"

echo "> the input arg number: $#"

echo "> lua script file name: $1"

echo "> the prefix to change: $2"

echo "> new prefix to be add: $3"

echo "> number of keys processed:"

redis-cli -h 127.0.0.1 -p 6379 -a 123456 --eval $1 $2 $3

printf "\n"

time=$(date "+%Y-%m-%d %H:%M:%S")
echo "end time: ${time}"
echo  "-------Task end------------"

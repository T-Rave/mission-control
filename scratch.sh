#!/bin/bash

read -p "Enter a number: " NUMBER
while [ "$NUMBER" -le 10 ];
do
  echo "$NUMBER"
  ((NUMBER++))
done
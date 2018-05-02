#!/bin/bash

index=0

read -e -p "Enter the path to the testing CSV: " FILEPATH
FILEPATH=$( echo $FILEPATH | sed 's/ /\\ /' )
eval FILEPATH=$FILEPATH
COLUMNS=$( head -1 $FILEPATH | sed 's/[^,]//g' | wc -c | xargs)

head -1 $FILEPATH | while IFS=, read -r -a arr; do 
  while [[ "$INDEX" -le "$COLUMNS" ]]
    do
      echo "${arr[$index]}"
      col="${arr[$index]}"
      echo " col - $col"
      ((index++))
  done
done


# read -p "Enter a number: " NUMBER
# while [ "$NUMBER" -le 10 ];
# do
#   echo "$NUMBER"
#   ((NUMBER++))
# done

# COL=$( head -1 $FILEPATH)
# echo "$COL"
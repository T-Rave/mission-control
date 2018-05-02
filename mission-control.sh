#!/bin/bash

read -e -p "Enter the path to the testing CSV: " FILEPATH
FILEPATH=$( echo $FILEPATH | sed 's/ /\\ /' )
eval FILEPATH=$FILEPATH

COLUMNS=$( head -1 $FILEPATH | sed 's/[^,]//g' | wc -c | xargs)
COUNT=$COLUMNS
echo "$COLUMNS"
while [ "$COUNT" -le "$COLUMNS" ]
do
  col="col$COLUMNS"
  echo "$col"
  ((COLUMNS++))
done
# # while IFS=, read -r col1 col2
# # do 
# #   echo "$col1"
# # done < $TESTFILE
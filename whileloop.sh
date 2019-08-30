#!/bin/bash
FILE=$1
while 
read LINE; 
do
   echo " The line is : $LINE"

done < $FILE

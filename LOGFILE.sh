
#!/bin/bash
#check if a search has been specified.
numargs=$#
if [ $numargs -lt 1 ]
then
     echo #new line separator
     echo "Search string not specified"
     exit
fi

#Create the log file 
sstrng=$1 #searching a string
cnt=0 #counter
LMT=10

while [ "$cnt" -lt "$LMT" ]
do
datestr=`date +%s` #generate date string for file
touch "log_$datestr.txt"
uname >> log_$datestr.txt
date >> log_$datestr.txt
grep -m `expr $cnt + 1` $sstrng words.txt | tail -1 >> log_$datestr.txt
sleep 10 #Rest for 10 seconds
cnt=`expr $cnt + 1`
done #while

echo
exit 0

#!/bin/bash
#
# DMH - 04/01/22 - Not we are running the BASH shell here to show the difference
# Sample script to use For and While loops with iterations.
# ==========================================================================
#
# Declare variables
LOGFILE=/home/dmh411/logs
BASEDIR=/home/dmh411/topsecret
#
# ---------- Clean the Log for a fresh run or ceate first time ------------
> $LOGFILE
#
# ------ For loop Example -------------
echo "Here is a For Loop Example"
for i in {1..10}
do
        echo $i
done
#
# ----- While read and do example of iteration --------
ls $BASEDIR |awk {'print $1'} |while read FILENAME
do
    echo "Filename equals" $FILENAME
done

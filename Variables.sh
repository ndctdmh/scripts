#!/bin/sh
#
# David Hozza 04/10/2022
#
# Script to illustate 
# 1. Variable that is passed into the script ex: $1
# 2. Assigned in the script variable, ex: LOGFILE
# This script can be called from another shell to automate the process.
#
# PARAMS passed into the script  {script.sh} {value}
# - IP adress
#
# ==============================================================================
#   VARIABLES
# ==============================================================================
ARRAYIP=$1
LOGFILE=/home/dmh411/logs
BASEDIR=/home/dmh411/topsecret
#
# ---------- Clean the Log for a fresh run or ceate first time ------------
> $LOGFILE
#
# ---------- List all of our file details and log it -----------------------
echo "Logging the details of files under '$BASEDIR' "
ls -lsa $BASEDIR >> $LOGFILE
echo "logging completed"
#
#
#

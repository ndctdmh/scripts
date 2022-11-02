#!/bin/sh
#
# This script will show examples of how variables can be used and logging can be done ny date and time. 
# It will also illustrate the use of hashes to check the integrity of items. 
#
# PARAMS passed into the script  {script.sh} {value}
# - FILENAME is the complete path to the file to be hashed and logged.
#
# ==============================================================================
#   VARIABLES
# ==============================================================================
FILENAME=$1
LOGDIR=/var/log/testlogs
#
#
# ---------- log the sha256 hash of the shadow file and add a time stamp to the log -----------------------
sha256sum $FILENAME >> $LOGDIR.`date +%m%d%y`
echo "Hash is written to the log file"
echo "Log now contains"
cat  $LOGDIR.`date +%m%d%y`

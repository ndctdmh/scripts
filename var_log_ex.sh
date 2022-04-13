
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
echo "The IP address your entered is" $ARRAYIP
ls -lsa $BASEDIR >> $LOGFILE
echo "logging completed"
#
# -------- Show my info with whoami to show how to run a command in a script -------------
whoami
#
# ------- Add a date time stamp to your log -----------------------------
#
echo "Logging with a data time stamp" > $LOGFILE.`date +%m%d%y`

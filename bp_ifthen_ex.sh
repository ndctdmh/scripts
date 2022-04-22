#!/bin/sh
#
# David Hozza 3/1/22
# Examples of adding numbers and comparing using a
# Blood Pressure Example.
#
# =========================================================
#
#
echo "Enter the Systloic Number ";read SYSTO
echo "Enter the Diastolic  Number ";read DIASTO
#
echo "Your BP is '$SYSTO' over '$DIASTO' "
#
if [ $SYSTO -lt 120 ] && [ $DIASTO -lt 80 ]
then
        echo "Your BP is NORMAL"
fi
#
if [ $SYSTO -ge 120 ] && [ $SYSTO -le 129] && [ $DIASTO -lt 80 ]
then
        echo "Your BP is Elevated"
fi
#
if [ $SYSTO -ge 130 ] || [ $DIASTO -ge 80 ]
then
        echo "You Have Stage 1 or Greater HYPERTENSION"
fi
# 

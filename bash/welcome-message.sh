#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
#title="Overlord"

# myname="dennis" not needed anymore replaced with $USER below to use the username
#assigns the name of the host to the variable hostname
#hostname=$(hostname)

#assighns all the date information to variable day to be used later.
day=$(date)

#this turns the day of the week into a numarical value
weekday=$(date +"%u")

#this figures out what day it is and prints out the appropriate message based on the numarical value assigned to weekday vareable
if [ $weekday == 1 ];
then
   title="first day"
elif
   [ $weekday == 2 ];
then
  title="long day"
elif
   [ $weekday == 3 ];
then
  title="short day"
elif
   [ $weekday == 4 ];
then
  title="easy day"
elif
   [ $weekday == 5 ];
then
  title="fun day"
elif
   [ $weekday == 6 ];
then
  title="test day"
elif
   [ $weekday == 7 ];
then
  title="last day"
fi

###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, "$title $USER! it is $day"

EOF

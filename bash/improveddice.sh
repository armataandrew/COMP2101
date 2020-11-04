#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

#Sets variable for number of sides
sides=6
#Sets variable for the range bias
minimum=1
# Tell the user we have started processing
echo "rolling with variables..."
#rolls the first die
roll=$(( RANDOM % sides + minimum))
#rolls the seccond die
roll2=$(( RANDOM % sides + minimum))
# Tell the user the results of the roll
echo "This is your roll for die one: $roll and die two: $roll2 "
# finds the sum of the numbers and assighns it to a variable
sum=$(( $roll + $roll2))
# finds the aavridge of the mumbers and assighns it a variable
avrg=$(( sum/2))
# Tell the user the results of the roll
echo "This is your roll for die one: $roll and die two: $roll2, The sum of your rolls is $sum and the average of your rolls is $avrg"

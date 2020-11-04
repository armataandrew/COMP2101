#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables.
# Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
echo "give me a number"
read firstnum
echo "give me a seccond number"
read secondnum
echo "give me a third number"
read thirdnum
sum=$(( $firstnum + $secondnum + $thirdnum))
echo "This is the sum of your numbers $sum"
product=$(( $firstnum * $secondnum * $thirdnum))
echo "This is the prodct of all three numbers $product"
#sum=$((firstnum + secondnum))
#dividend=$((firstnum / secondnum))
#fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

#cat <<EOF
#$firstnum plus $secondnum is $sum
#$firstnum divided by $secondnum is $dividend
#  - More precisely, it is $fpdividend
#EOF

#!/bin/bash -x
function  palindromeChecker()
{
   local num=$1
   sum=0
   temp=$num
   rem=0

while [ $num -gt 0 ]
do
   rem=$(( $num % 10 ))
   sum=$(((( $sum * 10 )) + $rem ))
   num=$(( $num / 10))
done
   echo $sum
}
read -p "Enter first number " first
read -p "Enter second number " second
rev="$(palindromeChecker $first )"
if [ $rev -eq $second ]
then
echo "num1 is a palindrome number num2 "
else
echo "num1 is not palindrome number num2 "
fi

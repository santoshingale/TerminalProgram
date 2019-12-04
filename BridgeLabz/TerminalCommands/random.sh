#!/bin/bash -x
singledigit=$(( RANDOM % 10 ))

dice=$(( RANDOM % 6 ))
dice=$(( $dice+1 ))
echo $dice

twodice=$(( RANDOM % 12 ))
twodice=$(( $twodice + 1 ))
echo $twodice

i=5
five=0
while [ $i -ge 1 ]
do
	five=$(( $five + $(( RANDOM % 100 ))))
	i=$(( $i - 1 ))
done
five=$(( $five / 5 ))
echo $five

read -p "Enter number in inch" inch

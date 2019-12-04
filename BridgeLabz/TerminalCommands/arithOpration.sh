#!/bin/bash -x
read -p "Enter value of a" a
read -p "Enter value of b" b
read -p "Enter value of c" c
min=1000
max=0
first=$(( $a + $b * $c ))
echo $first
second=$((( $a % $b ) + $c ))
echo $second
third=$(( $c + ( $a / $b )))
echo $third
forth=$(( $a * $b + $c ))
echo $forth

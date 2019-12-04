#!/bin/bash -x
read -p "Enter the first value" x
read -p "Enter the second value" y
z=$(( $x + $y ))
echo $z

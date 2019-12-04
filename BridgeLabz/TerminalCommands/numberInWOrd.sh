#!/bin/bash -x
read -p "Enter single digit number" number

case $number in
0) word=zero;;
1) word=one;;
2) word=two;;
3) word=three;;
4) word=four;;
5) word=five;;
6) word=six;;
7) word=seven;;
8) word=eight;;
9) word=nine;;

esac
echo $word 

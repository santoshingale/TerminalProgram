#!/bin/bash -x
#read -p "Enter Choice" choice
#read -p "Enter messure" messure
meter=3.28
choice=3
messure=9
convert=0.00
case $choice in
1) convert=$(( $messure * 12  ));;
2) convert=$(( $messure / 12 ));;
3) convert=`expr "$messure * 0.3048" | bc `;;
4) convert=`expr "$messure * 3.28" | bc` ;;
esac
echo $convert 

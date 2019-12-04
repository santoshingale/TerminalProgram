#!/bin/bash -x
read -p "Enter day in number" day
case day in
1)dayInWord=Monday;;
2)dayInWord=Tuesday;;
3)dayInWord=Wednesday;;
4)dayInWord=Thursday;;
5)dayInWord=Friday;;
6)dayInWord=Saturday;;
0)dayInWord=sunday;;
*)dayInWord=Invalid
esac
echo $dayInWord

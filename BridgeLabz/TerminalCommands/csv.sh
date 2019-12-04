 cat data.csv | awk '$4 > 100000 {print $2"  " $7}


cat data.csv | grep -i captain | awk '{sum+=$7} END {print sum/NR}'

cat data.csv | awk '70000 < $5 && $5 < 100000 {print $3"  " $5}'

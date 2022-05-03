#!/bin/bash
ml icc
ls
echo "Optimization 0"
icc -O0 power.cpp -o power
time ./power
echo -e "\nOptimization 1"
icc -O1 power.cpp -o power
time ./power
echo -e "\nOptimization 2"
icc -O2 power.cpp -o power
time ./power
echo -e "\nOptimization 3"
icc -O3 power.cpp -o power
time ./power
list=$(lscpu | grep "Flags" | cut -d: -f2)
IFS=' '
read -ra flags <<< "$list"
for flag in "${flags[@]}";
do
       f=${flag^^}
       f=$(echo $f | tr "_" .)
       icc power.cpp -x$f -o bin/out.$f
done
compiledFiles=$(ls bin)
readarray -t files <<< "$compiledFiles"
for file in "${files[@]}";
do
       echo "time ./bin/$file"
       time "./bin/$file"
done

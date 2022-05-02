#!/bin/bash
date
ml icc
echo "Compiler option 00:"
icc -00 power.cpp -o power
echo "Result:"
time ./power
rm power

echo ""
echo "Compiler option 01:"
icc -01 power.cpp -o power
echo "Result:"
time ./power
rm power

echo ""
echo "Compiler option 02 :" 
icc -02 power.cpp -o power
echo "Result:"
time./power 
rm power

echo ""
echo "Compiler option 02 with -ipo :" 
icc 02 power.cpp -ipo -o power
echo "Result:"
time ./power 
rm power

echo ""
echo "Compiler option 02 with NOALIAS :"
icc -02 -D NOALIAS power.cpp -o power
echo "Result:"
time ./power rm power

echo ""
echo "Compiler option 02 with ALIGNED :"
icc -02 -D ALIGNED power.cpp -o power
echo "Result:" 
time ./power
rm power

echo "" 
echo "Compiler option 02 with NOALIAS ALIGNED:"
icc -02 -D ALIGNED -D NOALIAS power.cpp -o power
echo "Result:" 
time ./power
rm power
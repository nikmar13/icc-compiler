#!/bin/bash
date                                                                                                                                                                   
ml icc                                                                                                                                                                 
echo "Compiler option O0:"
icc -O0 power.cpp -o power
echo "Result:"
time ./power
rm power
                                                                                                                                                                       
echo ""
echo "Compiler option O1:"
icc -O1 power.cpp -o power
echo "Result:"
time ./power
rm power
                                                                                                                                                                       
echo ""
echo "Compiler option O2 :" 
icc -O2 power.cpp -o power
echo "Result:"
time ./power
rm power
                                                                                                                                                                       
echo ""
echo "Compiler option O3 :" 
icc -O3 power.cpp -ipo -o power
echo "Result:"
time ./power
rm power

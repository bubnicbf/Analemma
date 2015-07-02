#!/bin/bash
#
gfortran -c analemma.f90
if [ $? -ne 0 ]; then
  echo "Errors compiling analemma.f90"
  exit
fi
#
gfortran analemma.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading analemma.o"
  exit
fi
#
rm analemma.o
#
chmod ugo+x a.out
mv a.out ~/bin/$ARCH/analemma
#
echo "Executable installed as ~/bin/$ARCH/analemma"

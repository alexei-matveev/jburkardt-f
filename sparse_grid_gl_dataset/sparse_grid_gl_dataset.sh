#!/bin/bash
#
gfortran -c -g sparse_grid_gl_dataset.f90 >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling sparse_grid_gl_dataset.f90"
  exit
fi
rm compiler.txt
#
gfortran sparse_grid_gl_dataset.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading sparse_grid_gl_dataset.o"
  exit
fi
rm sparse_grid_gl_dataset.o
#
chmod ugo+x a.out
mv a.out ~/bin/$ARCH/sparse_grid_gl_dataset
#
echo "Executable installed as ~/bin/$ARCH/sparse_grid_gl_dataset"

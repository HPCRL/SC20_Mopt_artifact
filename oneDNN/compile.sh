#!/bin/bash
ONEDNNPATH= #your oneDNN install path
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${ONEDNNPATH}/lib

# set omp thread number based on machine info 
export OMP_NUM_THREADS=8
/opt/intel/bin/icpc -DLIKWID_PERFMON -Ofast -O3 -axAVX,CORE-AVX2 -mavx2 -qopenmp -march=native --std=c++11 -I${ONEDNNPATH}/include -L${ONEDNNPATH}/lib -L/opt/local/lib ./dnnl_tmp.cpp -o a.out -ldnnl

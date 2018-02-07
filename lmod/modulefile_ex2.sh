#!/bin/bash


export MODULEPATH=$ROOT/modules/ex2:$MODULEPATH

ml purge
ml gaussian/g16.a03.avx

# Why is Lmod default changed? check .version file
ml purge
ml gcc

ml purge
ml gcc/6.0
# can't remove sticky module
ml purge
# try 
ml --force purge

# gcc and pgi should automatically swap
ml purge
ml gcc
echo $CC
ml pgi
echo $CC


#pushenv example
ml purge
ml pgi
echo $CC
echo $CXX
echo $FC
ml openmpi/2.0.0-pgi-17.10
echo $CC
echo $CXX
echo $FC
ml -openmpi/2.0.0-pgi-17.10
echo $CC
echo $CXX
echo $FC

# load atleast example
ml purge
ml openmpi/2.1.0-gcc-6.x

# group module example
ml purge
ml Go/1.9

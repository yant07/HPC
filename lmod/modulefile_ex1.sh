#!/bin/bash


export MODULEPATH=$ROOT/modules/ex1:$MODULEPATH

module help a
ml a

ml purge

ml a 
ml b


ml purge
ml b

ml purge
ml c

ml purge
ml a c
ml c a

ml purge
ml d

ml purge
ml e

ml purge
ml g
module unload g

ml purge
ml h
module unload h




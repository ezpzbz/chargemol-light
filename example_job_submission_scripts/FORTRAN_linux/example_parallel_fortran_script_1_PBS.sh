#!/bin/bash
#PBS -N Chargemol
#PBS -A (account number here)
#PBS -r n
#PBS -l nodes=1:ppn=8
#PBS -l mem=4000MB
#PBS -l walltime=4:00:00
#PBS -q shared
source /etc/profile
cd $PBS_O_WORKDIR
OMP_NUM_THREADS=8
export OMP_NUM_THREADS
~/bin/Chargemol_09_26_2017_linux_parallel> debug.txt 2>&1

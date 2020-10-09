#!/bin/bash
#SBATCH --job-name="Chargemol"  
#SBATCH --output="Chargemol.o%j.%N.out" 
#SBATCH --partition=shared
#SBATCH --share  
#SBATCH --nodes 1  
#SBATCH --ntasks-per-node=4
#SBATCH --export=ALL
#SBATCH -t 01:00:00 
export OMP_NUM_THREADS=4
module load gnu
/home/tamanz/bin/sourcecode_09_26_2017/Chargemol_09_26_2017_linux_parallel
echo "run complete on `hostname`: `date`" 1>&2


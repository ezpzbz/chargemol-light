#!/bin/bash
#SBATCH --job-name="Chargemol"  
#SBATCH --output="Chargemol.o%j.%N.out"  
#SBATCH --partition=shared
#SBATCH --share  
#SBATCH --nodes 1  
#SBATCH --ntasks-per-node=1
#SBATCH --export=ALL
#SBATCH -t 01:00:00 
module load gnu
/home/tamanz/bin/Chargemol_09_26_2017_linux_serial
echo "run complete on `hostname`: `date`" 1>&2


#!/bin/bash
#PBS -N chargemol
#PBS -A (account number here)
#PBS -r n
#PBS -l nodes=1:ppn=1
#PBS -l mem=2000MB
#PBS -l walltime=4:00:00
#PBS -q shared
source /etc/profile
cd $PBS_O_WORKDIR
~/bin/Chargemol_09_26_2017_linux_serial > debug.txt 2>&1

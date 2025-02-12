#!/bin/bash
###
###
#SBATCH --time=01:10:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --job-name=sumArray
#SBATCH --output=sumArray.o%j

#module load gcc mpich slurm cuda11.8


./sumArraysOnGPU


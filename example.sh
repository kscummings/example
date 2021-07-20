#!/bin/bash

#SBATCH -a 1-5
#SBATCH --cpus-per-task=1
#SBATCH --time=15:00
#SBATCH --constraint=centos7
#SBATCH --mem=5G
#SBATCH -p sched_mit_sloan_batch
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=kaylac@mit.edu
#SBATCH --output=trial_\%a.log

module load julia/1.4.2
julia example.jl -t "${SLURM_ARRAY_TASK_ID}"

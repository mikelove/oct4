#!/bin/bash
#
#SBATCH --job-name=snake
#SBATCH --time=1440
#SBATCH --mem=1000
#SBATCH --mail-user=milove@email.unc.edu
#SBATCH --mail-type=ALL

module load python/3.6.6
source ../.venv/bin/activate
snakemake --cluster "sbatch --mem=10000 -N 1 -n 6" -j 4
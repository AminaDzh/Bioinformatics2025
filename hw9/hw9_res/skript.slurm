#!/bin/bash
#SBATCH --job-name=fastqc_multiqc
#SBATCH --output=fastqc_%j.log
#SBATCH --error=fastqc_%j.err
#SBATCH --time=1:00:00
#SBATCH --cpus-per-task=4
#SBATCH --mem=4G
#SBATCH --partition=short

fastqc -o fastqc_res -t $SLURM_CPUS_PER_TASK *.fastq.gz

echo "Done"

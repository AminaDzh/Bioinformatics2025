#!/bin/bash
#SBATCH --job-name=fastp_trimming
#SBATCH --output=fastp_trimming.out
#SBATCH --error=fastp_trimming.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=01:00:00
#SBATCH --partition=short

source activate trimming

fastp -i R1.fastq.gz -I R2.fastq.gz -o R1_trimmed.fastq.gz -O R2_trimmed.fastq.gz -h fastp.html 

deactivate

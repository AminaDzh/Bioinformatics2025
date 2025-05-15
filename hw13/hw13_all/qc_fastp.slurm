#!/bin/bash
#SBATCH --job-name=fastqc_analysis
#SBATCH --output=fastqc_analysis.out
#SBATCH --error=fastqc_analysis.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --time=01:00:00
#SBATCH --partition=short

source activate multiqc_env

fastqc R1_trimmed.fastq.gz R2_trimmed.fastq.gz

multiqc . -o trimmed_multiqc_report

deactivate

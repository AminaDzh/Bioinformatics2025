#!/bin/bash
#SBATCH --job-name=star_alignment
#SBATCH --output=star_alignment.out
#SBATCH --error=star_alignment.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --time=04:00:00
#SBATCH --partition=medium

echo "=== Activating Conda environment ==="
source /opt/conda/etc/profile.d/conda.sh
conda  activate trancriptomics

STAR --runThreadN 16 --genomeDir /projects/mipt_dbmp_biotechnology/GRCh38/ --readFilesIn R1.fastq.gz R2.fastq.gz --readFilesCommand zcat --outFileNamePrefix star_output/ --outSAMtype BAM SortedByCoordinate --quantMode GeneCounts

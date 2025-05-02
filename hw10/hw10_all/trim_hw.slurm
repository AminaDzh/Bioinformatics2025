#!/bin/bash
#SBATCH --job-name=trimmomatic
#SBATCH --output=trimmomatic.out
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8G
#SBATCH --time=01:00:00

trimmomatic PE /projects/mipt_dbmp_biotechnology/genome/illumina_reads_R1_001.fastq /projects/mipt_dbmp_biotechnology/genome/illumina_reads_R2_001.fastq trimmed_R1_paired.fastq trimmed_R2_paired.fastq trimmed_R1_unpaired.fastq trimmed_R2_unpaired.fastq ILLUMINACLIP:adapters.fa:2:20:10:2:true HEADCROP:12 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:45

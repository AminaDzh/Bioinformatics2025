#!/bin/sh

#SBATCH --job-name=gatk2     	# Job name
#SBATCH --cpus-per-task=40     	# Run on a single CPU
#SBATCH --mem=256gb            	# Job memory request
#SBATCH --time=2:55:00       	# Time limit hrs:min:sec
#SBATCH --output=/home/adzhioeva/tutorials/genomics/variant_calling/gatk_slurm2.log  # Standard output and error log
#SBATCH --partition=medium

cd ~/tutorials/genomics/variant_calling;
gatk HaplotypeCaller -I /home/adzhioeva/tutorials/genomics/sam/tagged2.bam -R /projects/mipt_dbmp_biotechnology/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa -O variants2.vcf


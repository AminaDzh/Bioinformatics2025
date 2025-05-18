#!/bin/sh

#SBATCH --job-name=bwa_wgs3     # Job name
#SBATCH --cpus-per-task=40      # Run on a single CPU
#SBATCH --mem=256gb             # Job memory request
#SBATCH --time=3-00:00:00          # Time limit hrs:min:sec
#SBATCH --output=/home/adzhioeva/tutorials/genomics/align/bwa_slurm_3.log  # Standard output and error log
#SBATCH --partition=long

cd ~/tutorials/genomics/align;
bwa mem /projects/mipt_dbmp_biotechnology/GRCh38/Homo_sapiens.GRCh38.dna.primary_assembly.fa ~/tutorials/genomics/trimmed/WGSB_46_01_PTV291209_325278_3_1.fq.gz ~/tutorials/genomics/trimmed/WGSB_46_01_PTV291209_325278_3_2.fq.gz | gzip -3 > aln_pe_3.sam.gz

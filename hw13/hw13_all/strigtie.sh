#!/bin/bash
#SBATCH --job-name=stringtie
#SBATCH --output=stringtie.log
#SBATCH --error=stringtie.err
#SBATCH --time=2:00:00
#SBATCH --mem=8G
#SBATCH --cpus-per-task=4
#SBATCH --partition=medium

BAM="star_output/Aligned.sortedByCoord.out.bam"
REF_GTF="/projects/mipt_dbmp_biotechnology/GRCh38/Homo_sapiens.GRCh38.110.chr.gtf"
OUT_GTF="stringtie_output/transcripts.gtf"


stringtie $BAM -o $OUT_GTF -G $REF_GTF -p 4 -l "HM_RNA_SEQ"

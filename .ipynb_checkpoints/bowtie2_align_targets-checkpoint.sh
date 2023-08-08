#!/bin/bash

fasta=$1
index=$2
outname=$3

module load python
source activate rnaseq_basic

bowtie2 -p 8 -x $index --norc -f --un ${outname}.unmapped.fa $fasta -S ${outname}.sam

sam2bed < ${outname}.sam | cut -f1-6,12 > ${outname}.bed
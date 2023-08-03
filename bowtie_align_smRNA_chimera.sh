#!/bin/bash

fasta=$1
index=$2
outname=$3

module load python
source activate rnaseq_basic

bowtie -p 8 -x $index -v 0 -a --norc -f $fasta -S ${outname}.sam

sam2bed < ${outname}.sam | cut -f1-6,12 > ${outname}.bed
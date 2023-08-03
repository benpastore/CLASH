#!/bin/bash

reads=$1
index=$2
outfasta=$3

module load python
source activate rnaseq_basic

bowtie2 -p 8 -x $index -f $reads --un $outfasta -S genome_aligned.sam

rm genome_aligned.sam
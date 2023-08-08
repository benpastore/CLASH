#!/bin/bash

module load python
source activate rnaseq_basic

in=$1
out=$2

cat $in | paste - - | sort -k1,1 | uniq | awk -F'\t' '{OFS="\t"; print $1 "\n" toupper($2) }' | RNAup --interaction_pairwise -T 20 -w 25 -o 2> /dev/null | paste - - - > $out
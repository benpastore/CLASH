#!/bin/bash

adapter=$1
len=$2
in=$3
out=$4

module load python
source activate rnaseq_basic

#zcat $in | fastx_clipper -a $adapter -l $len | gzip - > $out
trim_galore \
    -j 4 \
    --length $len \
    -o $out \
    $in
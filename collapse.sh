#!/bin/bash

in=$1
out=$2

zcat $1 |\
    awk '(NR%4==2)' |\
    sort |\
    uniq -c |\
    sort -k1,1nr |\
    awk '{OFS="\t"; print ">" $2 ":" $1 "\n" $2 }' \
    > $2
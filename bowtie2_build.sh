#!/bin/bash

module load python
source activate rnaseq_basic

bowtie2-build -q $1 $2
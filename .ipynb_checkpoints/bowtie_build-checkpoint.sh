#!/bin/bash

module load python
source activate rnaseq_basic

bowtie-build -q $1 $2
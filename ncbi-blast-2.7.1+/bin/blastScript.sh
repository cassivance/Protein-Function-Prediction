#!/bin/bash
./makeblastdb -in Relative.fasta -parse_seqids -dbtype prot
./blastp -query /Users/tommyhowell/School/Bio465/Protein-Function-Prediction/target.237561.fasta -db Relative.fasta -outfmt 6 -task blastp -out output23.txt

#!/bin/bash
./makeblastdb -in Relative.fasta -parse_seqids -dbtype prot
./blastp -query target.237561.fasta -db Relative.fasta -outfmt 6 -task blastp -out outputCandida.txt
#requires Biopython to be installed
python nullDistribution
./blastp -query randomSeqs.fasta -db Relative.fasta -outfmt 6 -task blastp -out outputRand2.txt

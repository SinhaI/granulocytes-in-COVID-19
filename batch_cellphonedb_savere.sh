#!/bin/bash -l
#SBATCH -A snic2021-**-**
#SBATCH -p node
#SBATCH -n 20
#SBATCH -t 8:00:00
#SBATCH -J cellphoneDB_severe
module load bioinfo-tools
module load R_packages
module load python3/3.7.2
#cellphonedb method statistical_analysis WB_PBMC_immune.txt export_sparsematrix.txt --iterations=10 --threads=4
cellphonedb method statistical_analysis WB_PBMC_severe_cluster.txt WB_PBMC_severe_count.txt --counts-data=gene_name

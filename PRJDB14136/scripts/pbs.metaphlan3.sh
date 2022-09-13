#!/usr/bin/bash
#PBS -q blast
#PBS -l mem=96GB
#PBS -N pbs.metaphlan3.sh
set -e
#set -u
set -o pipefail

cd ${PBS_O_WORKDIR}

# start
echo; echo "[$(date)] $0 job has been started."

source /home/haruo/miniconda3/etc/profile.d/conda.sh
conda activate base

# To activate this environment, use
conda activate metaphlan3
#metaphlan -h

#paired-end
database_folder=/home/haruo/tools/my_metaphlan/metaphlan_databases/
MYDIR=/home/haruo/projects/people/shiwa/2022-03-07_tani8020/data
for i in ${MYDIR}/*_R1.fq.gz; do
 NAME=$(basename $i _R1.fq.gz)
 zcat ${i%_R1.fq.gz}_R?.fq.gz > ${NAME}.fq
 metaphlan ${NAME}.fq --input_type fastq --bowtie2db "${database_folder}" --nproc $(getconf _NPROCESSORS_ONLN) > ${NAME}_profile.txt
done

merge_metaphlan_tables.py *_profile.txt > merged_abundance_table.txt

# To deactivate an active environment, use
conda deactivate

# Step 1: Generate the species only abundance table
grep -E "s__|clade" merged_abundance_table.txt | sed 's/^.*s__//g' | cut -f1,3-8 | sed -e 's/clade_name/body_site/g' > merged_abundance_table_species.txt

# Step 2: Generate the heatmap
conda activate hclust2
hclust2.py -i merged_abundance_table_species.txt -o abundance_heatmap_species.png --f_dist_f braycurtis --s_dist_f braycurtis --cell_aspect_ratio 0.5 -l --flabel_size 10 --slabel_size 10 --max_flabel_len 100 --max_slabel_len 100 --minv 0.1 --dpi 300

# done
echo; echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'

https://biaswiki.nibb.ac.jp/menu/index.php

qsub pbs.metaphlan3.sh

#__COMMENT_OUT__

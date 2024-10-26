#!/usr/bin/bash
#PBS -q medium
#PBS -l mem=48GB
#PBS -N pbs.fastp.sh
set -e
#set -u
set -o pipefail

cd ${PBS_O_WORKDIR}

# start
echo; echo "[$(date)] $0 job has been started."

source /home/haruo/miniconda3/etc/profile.d/conda.sh
conda activate base

# To activate this environment, use
conda activate metagenome_env

# fastp
 echo in1=$in1
 echo in2=$in2
 echo NAME=$NAME
fastp --in1 $in1 --in2 $in2 --out1 ${NAME}_R1.fq.gz --out2 ${NAME}_R2.fq.gz --html ${NAME}.report.html --json ${NAME}.report.json -q 20 -t 1 -T 1 -l 20 -w $(getconf _NPROCESSORS_ONLN)

# To deactivate an active environment, use
conda deactivate

# done
echo; echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'

https://biaswiki.nibb.ac.jp/menu/index.php

qsub pbs.fastp.sh

#__COMMENT_OUT__


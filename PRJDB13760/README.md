Haruo Suzuki  
Last Update: 2022-09-11

----------
# PRJDB13760

Scripts used for [Urban microbiomes in Japan in 2021](https://ddbj.nig.ac.jp/resource/bioproject/PRJDB14136)

----------
## scripts

```
scripts/pbs.fastp.sh
scripts/pbs.metaphlan3.sh
```

----------
## fastp
- https://github.com/OpenGene/fastp

Running `fastp` program on paired end data (gzip compressed FASTQ) with:
```
qsub pbs.fastp.sh
```

----------
## metaphlan3
- https://huttenhower.sph.harvard.edu/metaphlan/
- https://github.com/biobakery/biobakery/wiki/metaphlan3

Running MetaPhlAn 3.0 using:
```
qsub pbs.metaphlan3.sh
```

----------
## Acknowledgments

Computational resources were provided by the Data Integration and Analysis Facility, National Institute for Basic Biology, Japan.
https://biaswiki.nibb.ac.jp/menu/index.php

----------
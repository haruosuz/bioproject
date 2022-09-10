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

Run `fastp` program on paired end data (gzip compressed FASTQ) with:
```
qsub pbs.fastp.sh
```

----------
## metaphlan3
- https://huttenhower.sph.harvard.edu/metaphlan/
- https://github.com/biobakery/biobakery/wiki/metaphlan3

Run MetaPhlAn 3.0 using:
```
qsub pbs.metaphlan3.sh
```

----------
## pavian
- https://github.com/fbreitwieser/pavian

Pavian was used for visualizing metagenomics classification results from MetaPhlAn.

Run Pavian from R by typing:
```
pavian::runApp(port=5000)
```

----------
## Acknowledgments

Computational resources were provided by the Data Integration and Analysis Facility, National Institute for Basic Biology, Japan.
https://biaswiki.nibb.ac.jp/menu/index.php

----------
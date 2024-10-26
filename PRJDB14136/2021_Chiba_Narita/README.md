# 2021_Chiba_Narita

This repository contains the code and scripts to run the bioinformatics tools, 
[fastp](#fastp), 
[metaphlan](#metaphlan), 
[pavian](#pavian).

----------
## scripts
- scripts/pbs.fastp.sh
- scripts/pbs.metaphlan3.sh

----------
## fastp
- https://github.com/OpenGene/fastp

Run `fastp` program on paired end data (gzip compressed FASTQ) with:
```
qsub pbs.fastp.sh
```

----------
## metaphlan
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
## Data availability

The raw sequencing reads have been deposited in the DDBJ Sequence Read Archive (DRA) under the accession number [DRR403243](https://ddbj.nig.ac.jp/resource/sra-run/DRR403243). 
The sample information is available under the DDBJ BioSample accession number [SAMD00520086](https://ddbj.nig.ac.jp/resource/biosample/SAMD00520086). 
The project information is available under the DDBJ BioProject accession number [PRJDB14136](https://ddbj.nig.ac.jp/resource/bioproject/PRJDB14136), under the umbrella BioProject accession number [PRJDB13760](https://ddbj.nig.ac.jp/resource/bioproject/PRJDB13760).

----------
## Acknowledgments

Computational resources were provided by the Data Integration and Analysis Facility, National Institute for Basic Biology, Japan.
https://biaswiki.nibb.ac.jp/menu/index.php

----------


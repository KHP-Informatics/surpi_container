# surpi_container

**SURPI [Dockerfile](https://github.com/KHP-Informatics/surpi_container/blob/master/Dockerfile)**


SURPI is a computational pipeline for pathogen identification from complex metagenomic next-generation sequencing (NGS) data generated from clinical samples.

Unbiased NGS approaches enable comprehensive pathogen detection in the clinical microbiology laboratory, and have numerous applications for public health surveillance, outbreak investigation, and the diagnosis of infectious diseases. However, practical deployment of the technology has been hindered by the bioinformatics challenge of analyzing results accurately and in a clinically relevant timeframe.

Check out: http://chiulab.ucsf.edu/surpi/ 


****************

Get and build SURPI in a ubuntu 12.04 container

```bash
git clone https://github.com/KHP-Informatics/surpi_container.git

cd surpi_container

docker build --rm=true -t compbio/surpi-v1.0.7:b0.1 .
```

**docker images**

```bash
REPOSITORY                    TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
compbio/surpi-v1.0.7          b0.1                df22682087ef        31 seconds ago      3.927 GB 
```

**Current Verison:** v1.0.7  




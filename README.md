# Nanopore Pathogen & AMR Gene Identification Pipeline
> A bioinformatics workflow for pathogen and antimicrobial resistance gene detection based on nanopore sequencing data, implemented with the `all_ratio` algorithm.

## Project Overview
This repository contains scripts and manuscript materials for nanopore‑based pathogen and AMR gene identification.

- `code/`: Source shell and python scripts for data analysis pipeline
- `manuscript_cli/`: Manuscript and workflow documentation for source-code version and packaged version.
- The source-code version allows parameter modification, while the packaged version enables easy installation and simple operation.
- source-code version https://github.com/guoqinmai/nanopore_code_data_4_v2/tree/main/code
- packaged version https://github.com/guoqinmai/nanopore_code_data_4_v2/releases/tag/allratio_cli_v2
- `manuscript_web/`: Web‑related manuscript materials

## Workflow Summary
1. Quality control of nanopore sequencing reads
2. Host‑genome contamination removal
3. Format conversion (FASTQ → FASTA)
4. BLASTN alignment against pathogenic microorganism genomes
5. `all_ratio` metric calculation for suspect pathogen identification
6. BLASTN alignment against AMR gene database
7. `all_ratio` metric calculation for suspect AMR gene identification

## Citation
If you use this pipeline or the `all_ratio` algorithm in your research, you may cite our manuscripts:

1. Mai, G., Chen, J., Zhang, M. et al. Construction of a pathogenic microorganism detection method based on third-generation nanopore sequencing data. BMC Infect Dis 25, 189 (2025). https://doi.org/10.1186/s12879-025-10559-5

2. Mai, G., Dai, Y..PathoResist AI: A One-Click Web Platform for Rapid Pathogen Resistance Analysis Based on the all_ratio Algorithm，https://doi.org/10.64898/2026.02.12.705264, submitted.

3. Mai,G., Zhang, W.,Zhang, Y., et al. Performance Evaluation of the all_ratio Algorithm for Pathogenic Microorganism and Antibiotic Resistance Gene Detection Using Nanopore Sequencing.https://doi.org/10.21203/rs.3.rs-10643982/v1. submitted.
   
## Requirements
- BLASTN
- Python3
- Linux environment

## License
MIT


## Code usage

####### Packaged version:https://github.com/guoqinmai/nanopore_code_data_4_v2/releases/download/allratio_cli_v2/allratio-user-release.tar.gz

####Step-by-step instructions for the packaged version

###1 Upload compressed package, then decompress

tar -xzf allratio-user-release.tar.gz

###2 Enter directory and perform installation

cd allratio-user-release && bash install-user.sh

###3 Enter working directory, upload sequencing files for analysis

cd ~/allratio

###4 Run analysis

allratio SRR21494933.fastq.gz

###5 Analysis results will be generated under this directory

~/allratio

###4-1. Batch_run allratio, script as follows:

for i in ls *.gz;do allratio $i;done

###4-2. Batch_run allratio, OR script as follows:

allratio 1.fastq.gz 2.fastq.gz 3.fastq.gz


####### Source version：https://github.com/guoqinmai/nanopore_code_data_4_v2/tree/main/code

####Step-by-step instructions for the source version

Step 1:quality control, code:1_zhikong.sh

Step 2:removal of host contamination,code:2_suzhu.sh

Step 3:Compressed files,code:3_yasuo.sh

Step 4:Unzip files,code:4_jieya.sh

Step 5:converted from FASTQ format to FASTA format,code:5_fasta.sh

Step 6:aligned with the genome of pathogenic microorganisms using BLASTN software,code:6_blastn.sh

Step 7: calculating the parameters of the pathogenic microorganism BLASTN results. These parameters, including the number of matches, average, sum, reads_ratio, and all_sum, are related to the possible pathogenic microorganisms. Therefore, they were multiplied to obtain the product, and the proportion of each product was calculated. The proportions of the products(all_ratio) are arranged in descending order.

The sample with the highest proportion of the product(all_ratio) was considered the suspected pathogen of the sample.code:7_bingyuanjun_tongji.py

Step 8:aligned with the AMR (Antimicrobial Resistance,AMR) genes using BLASTN software,code:8_blastn_amr.sh

Step 9: calculating the parameters of the AMR BLASTN results. These parameters, including the number of matches, average, sum, reads_ratio, and all_sum, are related to the possible AMR genes. Therefore, they were multiplied to obtain the product, and the proportion of each product(all_ratio) was calculated. The proportions of the products are arranged in descending order.

The sample with the highest proportion of the product(all_ratio) was considered the suspected AMR genes of the sample.code:9_bingyuanjun_tongji.py

You can run it step by step, or integrate it into one code to run automatically(run_scripts.sh). It should be noted that the sequence of automatically running code should not be changed.

datas file:\code

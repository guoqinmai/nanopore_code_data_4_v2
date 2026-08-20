# Nanopore Pathogen & AMR Gene Identification Pipeline
> A bioinformatics workflow for pathogen and antimicrobial resistance gene detection based on nanopore sequencing data, implemented with the `all_ratio` algorithm.

## Project Overview
This repository contains scripts and manuscript materials for nanopore‑based pathogen and AMR gene identification.

- `code/`: Source shell and python scripts for data analysis pipeline
- `manuscript_cli/`: Manuscript, workflow documentation for command‑line version
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
If you use this pipeline or the `all_ratio` algorithm in your research, please cite our manuscripts:

1. Mai, G., Dai, Y..PathoResist AI: A One-Click Web Platform for Rapid Pathogen Resistance Analysis Based on the all_ratio Algorithm，https://doi.org/10.64898/2026.02.12.705264, submitted.

2. Mai,G., Zhang, W.,Zhang, Y., et al. Performance Evaluation of the all_ratio Algorithm for Pathogenic Microorganism and Antibiotic Resistance Gene Detection Using Nanopore Sequencing. submitted.

3. Mai, G., Chen, J., Zhang, M. et al. Construction of a pathogenic microorganism detection method based on third-generation nanopore sequencing data. BMC Infect Dis 25, 189 (2025). https://doi.org/10.1186/s12879-025-10559-5

## Requirements
- BLASTN
- Python3
- Linux environment

## License
MIT

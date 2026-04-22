# Microbiome-Omics-Pipeline

[![Workflow](https://img.shields.io/badge/Analysis-Metagenomic-green)](#)
[![Workflow](https://img.shields.io/badge/Analysis-Metatranscriptomic-blue)](#)
[![Status](https://img.shields.io/badge/Project-Reproduction-orange)](#)

![GitHub last commit](https://img.shields.io/github/last-commit/yyyuechen/Microbiome-Omics-Pipeline)
![GitHub repo size](https://img.shields.io/github/repo-size/yyyuechen/Microbiome-Omics-Pipeline)
![GitHub top language](https://img.shields.io/github/languages/top/yyyuechen/Microbiome-Omics-Pipeline)
![GitHub stars](https://img.shields.io/github/stars/yyyuechen/Microbiome-Omics-Pipeline?style=social)

Bioinformatics workflows for metagenomic and metatranscriptomic analyses of microbial communities, with a focus on genome-resolved reconstruction, functional annotation, and transcriptomic profiling.

---

## Overview

This repository contains modular shell-based workflows for processing and analyzing microbiome omics datasets. It is organized into two main parts:

- **Metagenomic workflows** for quality control, co-assembly, MAG reconstruction, taxonomic annotation, functional annotation, and abundance quantification.
- **Metatranscriptomic workflows** for quality control, rRNA removal, co-assembly, non-redundant gene catalog construction, functional annotation, gene quantification, and differential expression analysis.

These scripts are designed as practical workflow templates and can be adapted to different datasets, computing environments, and project goals.

---

## Repository Structure

```text
Microbiome-Omics-Pipeline/
├── Metagenomic_general_scripts/
│   ├── 00_file_prepare/
│   ├── 01_QC_check/
│   ├── 02_depth_check/
│   ├── 03_quick_taxo/
│   ├── 04_co_assembly/
│   ├── 05_to_bin_faster/
│   ├── 06_bin/
│   ├── 07_check_bin/
│   ├── 08_bin_taxo/
│   ├── 09_bin_func/
│   └── 10_quantification/
└── Metatranscriptomic_general_scripts/
    ├── 00_file_prepare/
    ├── 01_QC_check/
    ├── 02_quick_taxo/
    ├── 03_rm_RNA/
    ├── 04_co_assemble/
    ├── 05_uniq_gene/
    ├── 06_check_seq_depth/
    ├── 07_assemble_quallity/
    ├── 08_func_anno/
    ├── 09_gene_quan/
    └── 10_DGE_analysis/
```
## Workflow Summary
### 1. Metagenomic workflow

Located in: Metagenomic_general_scripts/

- 00_file_prepare – prepare input files and organize project structure
- 01_QC_check – perform raw-read quality control and filtering
- 02_depth_check – assess sequencing depth and coverage sufficiency
- 03_quick_taxo – perform rapid taxonomic profiling using marker genes
- 04_co_assembly – co-assemble high-quality reads into contigs
- 05_to_bin_faster – estimate multi-sample coverage to support MAG binning
- 06_bin – reconstruct metagenome-assembled genomes (MAGs)
- 07_check_bin – assess MAG quality, completeness, and contamination
- 08_bin_taxo – assign taxonomy to recovered MAGs
- 09_bin_func – annotate genes and infer functional potential
- 10_quantification – quantify abundance / coverage and summarize outputs

### 2. Metatranscriptomic workflow

Located in: Metatranscriptomic_general_scripts/

- 00_file_prepare – prepare input files and organize project structure
- 01_QC_check – perform raw-read quality control and filtering
- 02_quick_taxo – perform rapid taxonomic profiling
- 03_rm_RNA – remove rRNA reads from metatranscriptomic datasets
- 04_co_assemble – co-assemble high-quality reads or transcripts
- 05_uniq_gene – construct a non-redundant gene set / gene catalog
- 06_check_seq_depth – assess whether sequencing depth is sufficient
- 07_assemble_quallity – evaluate assembly quality and reliability
- 08_func_anno – perform functional annotation of predicted genes
- 09_gene_quan – quantify transcript / gene abundance
- 10_DGE_analysis – identify differentially expressed genes across conditions

## Getting Started
Clone the repository
- git clone https://github.com/yyyuechen/Microbiome-Omics-Pipeline.git
- cd Microbiome-Omics-Pipeline

## General usage

Each workflow step is stored in its own folder. Before running a script:

- Open the corresponding script and modify input/output paths.
- Adjust database locations and software parameters for your environment.
- Run the workflow step-by-step in the intended order.
- Check intermediate outputs before moving to downstream analyses.

This repository contains shell-based workflows that rely on external bioinformatics software.
Please revise this section to match the exact tools used in your scripts.

Typical dependencies may include:

Core environment
- Linux / Unix
- Bash
- GNU core utilities (awk, sed, grep, sort, xargs)

Read preprocessing and QC
- fastp
- FastQC
- MultiQC

Read mapping and BAM processing
- Bowtie2
- SAMtools
- Picard

Assembly and clustering
- MEGAHIT or metaSPAdes
- Trinity
- CD-HIT

Genome binning and quality assessment
- MetaBAT2, MaxBin2, or related binning tools
- CheckM

Taxonomic and functional annotation
- GTDB-Tk
- Prokka
- eggNOG-mapper
- KEGG / custom annotation resources

Quantification and downstream statistics
- Salmon, featureCounts, or related quantification tools
R with relevant packages for downstream analysis and visualization

## Output Scope

Depending on the workflow branch and analysis stage, this repository can be used to generate:

- quality-controlled sequencing reads
- metagenomic or metatranscriptomic co-assemblies
- metagenome-assembled genomes (MAGs)
- taxonomic annotations
- functional annotations and pathway profiles
- abundance or coverage tables
- non-redundant gene catalogs
- transcript / gene quantification matrices
- differential expression results

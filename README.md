# Microbiome-Omics-Pipeline

[![Workflow](https://img.shields.io/badge/Analysis-Metagenomic%20%7C%20ML%20%7C%20PPI-green)](#)
[![Workflow](https://img.shields.io/badge/Analysis-Metatranscriptomic%20%7C%20ML%20%7C%20PPI-green)](#)
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

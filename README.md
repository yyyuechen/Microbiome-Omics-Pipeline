# Microbiome-Omics-Pipeline
A collection of bioinformatics scripts and pipelines used for the analysis of metagenomic and metatranscriptomic datasets from samples in the Red Sea, supporting genome reconstruction (MAGs) and functional characterization of microbial communities.

# Project overview
This repository contains scripts and workflows used for the analysis of metagenomic and metatranscriptomic datasets from samples in the Red Sea. The pipeline supports genome-resolved analyses, including metagenome assembly, binning, taxonomic classification, and functional profiling.

# Workflow overview

## Metagenomes

### 1)Quality control

Read trimming and filtering

### 2)Estimate average coverage for metagenomic datasets

Check if sequencing depth is sufficient to recover most genomes

### 3)Quick taxonomic assignment

Taxonomic assignment based on conserved marker genes (e.g., rplB)

### 4)Metagenome co-assembly

Co-assembly of high-quality reads into contigs

### 5)Fast multi-sample coverage estimation for MAG binning

Computes multi-sample contig coverage for metagenome-assembled genome (MAG) binning, **use after metagenomic assembly and before binning**

### 6)Genome binning

Reconstruction of MAGs

### 7)MAG refinement and quality assessment

Completeness and contamination estimation

### 8)Taxonomic annotation

Classification of MAGs

### 9)Functional annotation

Gene prediction and pathway analysis

### 10)Quantification and visualization

Coverage, abundance, and gene expression analyses

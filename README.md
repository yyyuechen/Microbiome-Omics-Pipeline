# Microbiome-Omics-Pipeline
A collection of bioinformatics scripts and pipelines used for the analysis of metagenomic and metatranscriptomic datasets from samples in the Red Sea, supporting genome reconstruction (MAGs) and functional characterization of microbial communities.

# Project overview
This repository contains scripts and workflows used for the analysis of metagenomic and metatranscriptomic datasets from samples in the Red Sea. The pipeline supports genome-resolved analyses, including metagenome assembly, binning, taxonomic classification, and functional profiling.

# Workflow overview

## Metagenomes

All scripts saved in Metagenomic_general_analysis

### 1)Quality control

Read trimming and filtering

### 2)Estimate average coverage for metagenomic datasets

Evaluate whether sequencing depth is sufficient to capture most community sequence diversity.

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

## Metatranscriptomes

All scripts saved in Metatranscriptomic_general_analysis

### 1)Quality control

Read trimming and filtering

### 2)Remove rRNA

Remove ribosomal RNA (rRNA) reads from metatranscriptomic datasets to retain only protein-coding transcripts for functional and expression analysis.

### 3)Estimate average coverage for metatranscriptomic datasets

Evaluate whether sequencing depth is sufficient to capture the biodiversity signal of the transcriptionally active community.

### 4)Quick taxonomic assignment

Taxonomic assignment based on conserved marker genes (e.g., rplB)

### 5)Metatranscriptomic co-assembly

Co-assembly of high-quality reads into contigs

### 6) Identify non-redundant genes

Extract and cluster assembled transcripts or predicted coding sequences to generate a non-redundant gene set for downstream taxonomic, functional, and expression analyses.

### 7) Assess assembly quality

Evaluate metatranscriptome assembly quality using metrics such as contig length distribution, N50, read mapping rate, and transcript completeness to determine overall assembly reliability.

### 8) Assess assembly representation and redundance

Assess assembly completeness and redundancy by remapping reads to the assembly and examining mapping recovery, multi-mapping patterns, and redundancy among highly similar transcripts.

### 9) Taxonomic annotation

Assign taxonomic identities to assembled transcripts or predicted genes to characterize the composition of the transcriptionally active microbial community.

### 10) Functional annotation

Annotate predicted genes against functional databases to identify metabolic pathways, gene families, and biological functions represented in the metatranscriptome.

### 11) Gene quantification

Quantify transcript or gene abundance by mapping reads back to the non-redundant gene catalog or assembled transcripts to estimate expression levels across samples.

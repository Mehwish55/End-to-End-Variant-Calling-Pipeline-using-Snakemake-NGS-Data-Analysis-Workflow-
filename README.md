# Bacterial Variant Calling Pipeline (Snakemake)

## Description
A reproducible Snakemake pipeline for bacterial genome analysis using NCBI SRA data.

## Workflow
- FastQC (quality control)
- MultiQC (summary report)
- fastp (trimming)
- BWA (alignment)
- Samtools (BAM processing)
- FreeBayes (variant calling)

## Output
- QC reports
- VCF file (variants)

## Tools
Snakemake, FastQC, MultiQC, fastp, BWA, Samtools, FreeBayes

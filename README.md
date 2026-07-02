# 🧬 Variant Calling Pipeline using Snakemake

An end-to-end, reproducible bioinformatics pipeline for processing Next-Generation Sequencing (NGS) data and identifying genetic variants from raw sequencing reads to final VCF output.

This project demonstrates a full workflow including quality control, read alignment, post-processing, and variant calling using a Snakemake-based workflow system.

---

## 📌 Project Objectives

- Build a fully automated variant calling pipeline
- Process real-world NGS data (FASTQ format)
- Perform quality control and preprocessing
- Align reads to a reference genome
- Identify SNPs and indels
- Generate reproducible results using workflow automation

---

## 🧪 Pipeline Overview

The workflow follows these steps:

1. **Raw Data Input (FASTQ)**
2. **Quality Control**
   - FastQC
   - MultiQC (summary report)
3. **Read Preprocessing**
   - Adapter trimming (fastp)
4. **Alignment**
   - BWA-MEM alignment to reference genome
5. **Post-processing**
   - Sorting (Samtools)
   - Mark duplicates (Picard)
   - Indexing BAM files
6. **Variant Calling**
   - GATK HaplotypeCaller
7. **Variant Filtering**
   - Quality-based filtering
8. **Output Generation**
   - Final VCF file
   - Summary reports and statistics

---

## 🧰 Tools & Technologies

- Snakemake (workflow management)
- Python (workflow scripting)
- FastQC (quality control)
- MultiQC (reporting)
- BWA (read alignment)
- Samtools (BAM processing)
- Picard (duplicate marking)
- GATK (variant calling)
- fastp (read trimming)

---

## 🧬 Input Data

This pipeline is designed to work with publicly available sequencing data such as:

- NCBI Sequence Read Archive (SRA)
- 1000 Genomes Project datasets
- Simulated reads for testing

Example datasets can be downloaded using:

```bash
prefetch SRRXXXXXXX
fasterq-dump SRRXXXXXXX

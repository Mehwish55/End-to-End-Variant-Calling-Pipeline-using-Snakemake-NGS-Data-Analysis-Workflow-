# 🧬 End-to-End Bacterial Variant Calling Pipeline (Snakemake)

## 📌 Overview
This project implements a reproducible Snakemake workflow for bacterial NGS data analysis, from raw FASTQ files to variant calling (VCF generation).

It processes *E. coli* sequencing data using standard bioinformatics tools.

---

## ⚙️ Workflow Steps

1. Quality Control (FastQC)
2. Aggregated QC report (MultiQC)
3. Read trimming (fastp)
4. Read alignment (BWA)
5. BAM processing (Samtools)
6. Variant calling (FreeBayes)

---

## 📊 Final Output
- Variant Call Format (VCF) file
- Quality control reports
- Aligned BAM files

---

## 🧪 Tools Used
- Snakemake
- FastQC
- MultiQC
- fastp
- BWA
- Samtools
- FreeBayes

---

## 📁 Project Structure

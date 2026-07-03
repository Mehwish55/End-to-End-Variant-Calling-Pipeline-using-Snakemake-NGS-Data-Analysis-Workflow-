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
The final output includes:

-High-confidence variant calls (VCF file)
-Quality control reports (FastQC + MultiQC)
-Processed BAM alignment files


---

## 🧪 Tools Used

Snakemake (workflow management)
FastQC (quality control)
MultiQC (report aggregation)
fastp (read trimming)
BWA (alignment)
SAMtools (BAM processing)
FreeBayes (variant calling)

---

## 📁 Project Structure

End-to-End-Variant-Calling-Pipeline/

├── Snakefile
├── README.md
├── environment.yml
├── config/
│   └── config.yaml
│
├── workflow/
│   └── rules/
│       ├── fastqc.smk
│       ├── multiqc.smk
│       ├── fastp.smk
│       ├── alignment.smk
│       ├── samtools.smk
│       └── freebayes.smk
│
├── data/
│   └── ref/
│       └── ecoli_reference.fasta
│
├── results/
│   ├── qc/
│   ├── trimmed/
│   ├── bam/
│   └── vcf/
│
├── logs/
├── reports/
│   └── multiqc_report.html
│
└── figures/
    └── dag.png

    
---

📈 Biological Application

This pipeline is suitable for:

Bacterial genome variant discovery
SNP/indel detection
Comparative genomics
NGS data preprocessing and analysis

🔁 Reproducibility

This workflow is fully reproducible using Snakemake and Conda environments, ensuring consistent results across systems.


👩‍💻 Author

Mehwish

Bioinformatics Pipeline Project – Snakemake-based NGS Analysis

📌 Future Improvements
-Multi-sample support
-Docker/Singularity containerization
-Cloud/HPC deployment
-Automated reporting dashboard

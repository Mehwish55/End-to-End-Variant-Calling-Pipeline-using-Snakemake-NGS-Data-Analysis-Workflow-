configfile: "config/config.yaml"

include: "workflow/rules/fastqc.smk"
include: "workflow/rules/multiqc.smk"
include: "workflow/rules/fastp.smk"
include: "workflow/rules/alignment.smk"
include: "workflow/rules/samtools.smk"
include: "workflow/rules/freebayes.smk"

rule all:
    input:
        "results/vcf/SRR1770413.vcf"

rule bwa_mem:
    input:
        ref=config["reference"],
        r1="results/trimmed/SRR1770413_1.trim.fastq",
        r2="results/trimmed/SRR1770413_2.trim.fastq"

    output:
        sam="results/alignment/SRR1770413.sam"

    threads:
        config["threads"]

    shell:
        """
        bwa mem -t {threads} {input.ref} {input.r1} {input.r2} > {output.sam}
        """

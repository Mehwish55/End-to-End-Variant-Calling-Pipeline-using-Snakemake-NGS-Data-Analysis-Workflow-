rule freebayes:
    input:
        ref=config["reference"],
        bam="results/bam/SRR1770413.sorted.bam"

    output:
        vcf="results/vcf/SRR1770413.vcf"

    threads:
        config["threads"]

    shell:
        """
        freebayes -f {input.ref} {input.bam} > {output.vcf}
        """

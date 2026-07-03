rule sam_to_bam:
    input:
        sam="results/alignment/SRR1770413.sam"

    output:
        bam="results/bam/SRR1770413.sorted.bam",
        bai="results/bam/SRR1770413.sorted.bam.bai"

    threads:
        config["threads"]

    shell:
        """
        samtools view -@ {threads} -bS {input.sam} | \
        samtools sort -@ {threads} -o {output.bam}

        samtools index {output.bam}
        """

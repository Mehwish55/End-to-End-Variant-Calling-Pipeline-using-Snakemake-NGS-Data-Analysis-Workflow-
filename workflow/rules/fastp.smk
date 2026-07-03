rule fastp:
    input:
        r1=config["reads"]["R1"],
        r2=config["reads"]["R2"]

    output:
        r1_trimmed="results/trimmed/SRR1770413_1.trim.fastq",
        r2_trimmed="results/trimmed/SRR1770413_2.trim.fastq",
        html="results/trimmed/fastp_report.html",
        json="results/trimmed/fastp_report.json"

    threads:
        config["threads"]

    shell:
        """
        fastp \
            -i {input.r1} \
            -I {input.r2} \
            -o {output.r1_trimmed} \
            -O {output.r2_trimmed} \
            -h {output.html} \
            -j {output.json} \
            -w {threads}
        """

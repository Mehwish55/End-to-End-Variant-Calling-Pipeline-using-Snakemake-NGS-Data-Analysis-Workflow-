rule fastqc:
    input:
        r1=config["reads"]["R1"],
        r2=config["reads"]["R2"]

    output:
        "results/qc/SRR1770413_1_fastqc.html",
        "results/qc/SRR1770413_1_fastqc.zip",
        "results/qc/SRR1770413_2_fastqc.html",
        "results/qc/SRR1770413_2_fastqc.zip"

    threads:
        config["threads"]

    shell:
        """
        mkdir -p results/qc
        fastqc {input.r1} {input.r2} --threads {threads} --outdir results/qc
        """

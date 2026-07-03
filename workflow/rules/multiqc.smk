rule multiqc:
    input:
        expand("results/qc/SRR1770413_{read}_fastqc.html",
               read=["1", "2"])

    output:
        "results/qc/multiqc_report.html"

    shell:
        """
        multiqc results/qc -o results/qc
        """

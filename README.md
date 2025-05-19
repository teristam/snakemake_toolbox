1. Install UV
2. Install base depedencies `uv sync`
3. Activate environment `source .venv/bin/activate`

## Snakemake

1. Dry-run  
   `snakemake --dry-run`
2. Run with 4 cores
   `snakemake --cores 4` or `snakemake -c4`
3. Force re-run a certain rule  
    `snakemake -c4 -R plot`
4. Use specifiec conda environment for rules
    `snakemake -c4 --use-conda`
5. Force re-run all files  
   `snakemake -c4 -F`
6. It will automatically track code change by default
This is the repository for the BNDU Toolbox meeting talk 
"Introduction to scientific workflow management systems for animal studies"

## Setup instruction
1. Install [uv](https://docs.astral.sh/uv/getting-started/installation/)
2. Clone this repository
   `git clone https://github.com/teristam/snakemake_toolbox`
3. Go to the `snakemake_toolbox` folder
4. Install base depedencies `uv sync`
5. Activate environment `source .venv/bin/activate`

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
6. It will automatically track code change by default. Try modifying `combine.py` and re-run `snakemake --dry-run`

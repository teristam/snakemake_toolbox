# Combine two files into one
sys.stderr = open(snakemake.log[0], "w", buffering=1)
sys.stdout = sys.stderr

print('This is some text')

with open(snakemake.input.A,'r') as f:
    A = f.read()

with open(snakemake.input.B, 'r') as f:
    B = f.read()

with open(snakemake.output.combined, 'w') as f:
    f.write(A+'\n'+B)

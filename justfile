alias ma := makeall
alias m :=make
alias n :=dryrun
alias f :=force-build

#Perform a dry run of the workflow
dryrun:
    snakemake -n

# Run workflow on all targets
makeall:
    snakemake -c10

# Run workflow on specific session
make target:
    snakemake -F -c10 data/{{target}}/processed/workflow.done


#Force re-run the workflow
[confirm]
force-build: 
    snakemake -c10 -F

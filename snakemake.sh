wget "https://github.com/conda-forge/miniforge/releases/download/25.3.1-0/Miniforge3-25.3.1-0-Linux-x86_64.sh"
miniforge is the package having python, mamba and conda


bash Miniforge3-25.3.1-0-Linux-x86_64.sh

mamba --version

mamba create --name snakemake_env snakemake -c conda-forge -c bioconda
bioconda/linux-64                                    5.2MB @ 820.0kB/s  6.3s
bioconda/noarch                                      4.9MB @ 737.5kB/s  6.4s
conda-forge/noarch                                  22.0MB @   1.5MB/s 14.8s
conda-forge/linux-64                                46.6MB @   2.3MB/s 20.9s

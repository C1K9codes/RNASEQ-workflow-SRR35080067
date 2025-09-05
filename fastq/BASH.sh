## updates system's packages and installs SRA toolkit to fetch SRA data from NCBI
sudo apt update 
sudo apt install sra-toolkit

## version check
fastq-dump --version

## retrieving raw .sra file data
prefetch SRR35080067

## this commands converts raw .sra file data to fastq format (raw sequencing reads)
fasterq-dump SRR35080067 --split-files -o ./fastq

## list the files in fastq folder in human readable format
ls -lh fastq

## this commands prints the first 20 lines of fastq files and each read with four lines
head -n 20 ./fastq/SRR35080067_1.fastq


## command line for first file
mkdir -p fastqc_reports --makes directory where u save your data
fastqc ./fastq/SRR35080067_1.fastq -o ./fastqc_reports
ls -lh fastqc_reports

## command line for second file
fastqc ./fastq/SRR35080067_2.fastq -o ./fastqc_reports
head -n 20 ./fastq/SRR35080067_2.fastq

# Run FastQC on FASTQ files combines
fastqc ./fastq_files/SRR35080067_1.fastq ./fastq_files/SRR35080067_2.fastq -o ./qc_reports

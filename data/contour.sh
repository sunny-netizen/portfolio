#!/bin/bash -l
#$ -l h_rt=71:00:0
#$ -l mem=30G
#$ -l tmpfs=30G
#$ -N contour
#$ -wd /home/ucfnhbx/Scratch
cd $TMPDIR
module load beta-modules
module -f unload compilers mpi gcc-libs
module load r/recommended
export R_LIBS=/home/ucfnhbx/Scratch/lib/r/site-packages:$R_LIBS
R --no-save </home/ucfnhbx/Scratch/contour.R > /home/ucfnhbx/Scratch/contour$JOB_ID.out
#!/bin/bash
#SBATCH -A wof
#SBATCH -p kjet,sjet,tjet,xjet,ujet,vjet
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH --mem=8G
#SBATCH -J CMPUPP
#SBATCH --output=CMPUPP.o%j
#SBATCH --error=CMPUPP.o%j
#SBATCH -D .
#

module purge
module use /lfs4/NAGAPE/hpc-wof1/ywang/MPAS/modules
module load build_jet_intel22

export WRF_DIR=/lfs4/NAGAPE/hpc-wof1/ywang/MPAS/WRFV4.0

limit stacksize unlimited

cd /lfs4/NAGAPE/hpc-wof1/ywang/MPAS/UPP_KATE_kjet

./compile

exit

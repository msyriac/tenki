#!/bin/bash
#SBATCH --constraint=haswell
#SBATCH --nodes=10
#SBATCH --partition=debug
#SBATCH --time=00:10:00


srun -n 32 -c 4 python sim_map.py -v -N 32 -s 0 -g curved -L fullsky_car.fits $HOME/repos/tenki/Aug6_highAcc_CDM_lenspotentialCls.dat $WORK/data/sigurdsims/v6full/fullsky_curved_lensed_car_%02d.fits --lmax 6000 --maplmax 6000 --ncomp 3 -B 32


#!/bin/bash
#SBATCH --constraint=haswell
#SBATCH --nodes=10
#SBATCH --partition=debug
#SBATCH --time=00:10:00

name=equator
proj=car

#module unload impi
#module load openmpi

#srun -n 160 -c 4 python sim_map.py -v -N 3200 -s 0 -g curved -L $WORK/data/sigurdsims/${name}_car.fits $HOME/repos/tenki/cosmo2017_lenspotentialCls.dat $WORK/data/sigurdsims/v5/${name}_curved_lensed_car_%02d.fits --lmax 6000 --maplmax 6000


#srun -n 160 -c 4 python sim_map.py -v -N 320 -s 0 -g curved -L $WORK/data/sigurdsims/${name}_${proj}.fits $HOME/repos/tenki/Aug6_highAcc_CDM_lenspotentialCls.dat $WORK/data/sigurdsims/v6/${name}_curved_lensed_${proj}_%02d.fits --lmax 6000 --maplmax 6000


srun -n 160 -c 4 python sim_map.py -v -N 160 -s 0 -g curved -L car_equator_1600sqdeg.fits $HOME/repos/tenki/Aug6_highAcc_CDM_lenspotentialCls.dat $WORK/data/sigurdsims/v61600/${name}_curved_lensed_${proj}_%02d.fits --lmax 6000 --maplmax 6000


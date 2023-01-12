#$ -N amber-gpu-serial
#$ -pe gpu 1
#$ -cwd

module load amber/18-gpu


cuda-wrapper.sh pmemd.cuda -O -i min1.input -o betaNVA_min1.out -p betaNVA.prmtop -r betaNVA_min1.rst -c betaNVA.inpcrd -ref betaNVA.inpcrd
cuda-wrapper.sh pmemd.cuda -O -i min2.input -o betaNVA_min2.out -p betaNVA.prmtop -r betaNVA_min2.rst -c betaNVA_min1.rst -ref betaNVA_min1.rst
cuda-wrapper.sh pmemd.cuda -O -i min3.input -o betaNVA_min3.out -p betaNVA.prmtop -r betaNVA_min3.rst -c betaNVA_min2.rst -ref betaNVA_min2.rst
cuda-wrapper.sh pmemd.cuda -O -i min4.input -o betaNVA_min4.out -p betaNVA.prmtop -r betaNVA_min4.rst -c betaNVA_min3.rst -ref betaNVA_min3.rst
cuda-wrapper.sh pmemd.cuda -O -i eq1.input -o betaNVA_eq1.out -p betaNVA.prmtop -r betaNVA_eq1.rst -c betaNVA_min4.rst -ref betaNVA_min4.rst -x betaNVA_eq1.nc
cuda-wrapper.sh pmemd.cuda -O -i eq2.input -o betaNVA_eq2.out -p betaNVA.prmtop -r betaNVA_eq2.rst -c betaNVA_eq1.rst -ref betaNVA_eq1.rst -x betaNVA_eq2.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md1.out -p betaNVA.prmtop -r betaNVA_md1.rst -c betaNVA_eq2.rst -ref betaNVA_eq2.rst -x betaNVA_md1.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md2.out -p betaNVA.prmtop -r betaNVA_md2.rst -c betaNVA_md1.rst -ref betaNVA_md1.rst -x betaNVA_md2.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md3.out -p betaNVA.prmtop -r betaNVA_md3.rst -c betaNVA_md2.rst -ref betaNVA_md2.rst -x betaNVA_md3.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md4.out -p betaNVA.prmtop -r betaNVA_md4.rst -c betaNVA_md3.rst -ref betaNVA_md3.rst -x betaNVA_md4.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md5.out -p betaNVA.prmtop -r betaNVA_md5.rst -c betaNVA_md4.rst -ref betaNVA_md4.rst -x betaNVA_md5.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md6.out -p betaNVA.prmtop -r betaNVA_md6.rst -c betaNVA_md5.rst -ref betaNVA_md5.rst -x betaNVA_md6.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md7.out -p betaNVA.prmtop -r betaNVA_md7.rst -c betaNVA_md6.rst -ref betaNVA_md6.rst -x betaNVA_md7.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md8.out -p betaNVA.prmtop -r betaNVA_md8.rst -c betaNVA_md7.rst -ref betaNVA_md7.rst -x betaNVA_md8.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md9.out -p betaNVA.prmtop -r betaNVA_md9.rst -c betaNVA_md8.rst -ref betaNVA_md8.rst -x betaNVA_md9.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o betaNVA_md10.out -p betaNVA.prmtop -r betaNVA_md10.rst -c betaNVA_md9.rst -ref betaNVA_md9.rst -x betaNVA_md10.nc


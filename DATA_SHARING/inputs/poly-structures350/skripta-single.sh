#$ -N amber-gpu-serial
#$ -pe gpu 1
#$ -cwd

module load amber/18-gpu


cuda-wrapper.sh pmemd.cuda -O -i min1.input -o lll_min1.out -p lll.prmtop -r lll_min1.rst -c lll.inpcrd -ref lll.inpcrd
cuda-wrapper.sh pmemd.cuda -O -i min2.input -o lll_min2.out -p lll.prmtop -r lll_min2.rst -c lll_min1.rst -ref lll_min1.rst
cuda-wrapper.sh pmemd.cuda -O -i min3.input -o lll_min3.out -p lll.prmtop -r lll_min3.rst -c lll_min2.rst -ref lll_min2.rst
cuda-wrapper.sh pmemd.cuda -O -i min4.input -o lll_min4.out -p lll.prmtop -r lll_min4.rst -c lll_min3.rst -ref lll_min3.rst
cuda-wrapper.sh pmemd.cuda -O -i eq1.input -o lll_eq1.out -p lll.prmtop -r lll_eq1.rst -c lll_min4.rst -ref lll_min4.rst -x lll_eq1.nc
cuda-wrapper.sh pmemd.cuda -O -i eq2.input -o lll_eq2.out -p lll.prmtop -r lll_eq2.rst -c lll_eq1.rst -ref lll_eq1.rst -x lll_eq2.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md1.out -p lll.prmtop -r lll_md1.rst -c lll_eq2.rst -ref lll_eq2.rst -x lll_md1.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md2.out -p lll.prmtop -r lll_md2.rst -c lll_md1.rst -ref lll_md1.rst -x lll_md2.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md3.out -p lll.prmtop -r lll_md3.rst -c lll_md2.rst -ref lll_md2.rst -x lll_md3.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md4.out -p lll.prmtop -r lll_md4.rst -c lll_md3.rst -ref lll_md3.rst -x lll_md4.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md5.out -p lll.prmtop -r lll_md5.rst -c lll_md4.rst -ref lll_md4.rst -x lll_md5.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md6.out -p lll.prmtop -r lll_md6.rst -c lll_md5.rst -ref lll_md5.rst -x lll_md6.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md7.out -p lll.prmtop -r lll_md7.rst -c lll_md6.rst -ref lll_md6.rst -x lll_md7.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md8.out -p lll.prmtop -r lll_md8.rst -c lll_md7.rst -ref lll_md7.rst -x lll_md8.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md9.out -p lll.prmtop -r lll_md9.rst -c lll_md8.rst -ref lll_md8.rst -x lll_md9.nc
cuda-wrapper.sh pmemd.cuda -O -i md1.input -o lll_md10.out -p lll.prmtop -r lll_md10.rst -c lll_md9.rst -ref lll_md9.rst -x lll_md10.nc


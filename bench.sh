#/bin/bash
set -e
BENCHS=( "BT" "FT" "LU" "SP" "CG" )
CLASS=( "C" "C" "C" "C" "C" )
MSG="[CDH]"

# Init
if [ ! -d NPB3.4 ]; then
  wget https://www.nas.nasa.gov/assets/npb/NPB3.4.tar.gz
  tar -xvf NPB3.4.tar.gz
  cd NPB3.4/NPB3.4-MPI
  cp config/make.def.template config/make.def 2>/dev/null
else
  cd NPB3.4/NPB3.4-MPI
fi

make clean
for (( b=0; b<${#BENCHS[@]}; b++ )); do
  make ${BENCHS[$b]} CLASS=${CLASS[$b]}
done


# Bench
for (( b=0; b<${#BENCHS[@]}; b++ )); do
  echo "$MSG Benching ${BENCHS[$b]}"
  # ${var,,} to lower case
  time mpirun bin/${BENCHS[$b],,}.${CLASS[$b]}.x > /dev/null
done


cd ../..

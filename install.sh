module purge
module load StdEnv/2020 fftw-mpi mpi4py/3.0.3 hdf5-mpi/1.12 python/3.8 scipy-stack

virtualenv --no-download python_env
source python_env/bin/activate
pip install --no-index --upgrade pip
pip install --no-index cython xarray
pip install --no-index pytest pytest-cov pytest-benchmark
pip install pytest-parallel

export MPI_PATH=$EBROOTOPENMPI
export FFTW_PATH=$EBROOTFFTW
export FFTW_STATIC=true


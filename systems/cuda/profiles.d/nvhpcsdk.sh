export PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/23.11/compilers/bin/:$PATH
export PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/23.11/comm_libs/mpi/bin/:$PATH
export LD_LIBRARY_PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/23.11/compilers/lib/:$LD_LIBRARY_PATH

#mpi aliases
alias mpinvc='/opt/nvidia/hpc_sdk/Linux_x86_64/23.11/comm_libs/mpi/bin//mpicc -lcuda -lcudart'
alias mpinvc++='/opt/nvidia/hpc_sdk/Linux_x86_64/23.11/comm_libs/mpi/bin//mpicc -lcuda -lcudart'
alias mpinvfortran='/opt/nvidia/hpc_sdk/Linux_x86_64/23.11/comm_libs/mpi/bin//mpifort -lcuda -lcudart'

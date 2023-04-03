FC=gfortran
NAME=EBM

NC_CROOT=/usr/local/Cellar/netcdf/4.9.0
NC_FROOT=/usr/local/Cellar/netcdf-fortran/4.6.0
INC_NC= -I${NC_FROOT}/include
LIB_NC= -L${NC_FROOT}/lib -lnetcdff -L${NC_CROOT}/lib -lnetcdf

all: EBM.f90 grid.f90 app.f90 geography_input.f90 albedo_input.f90 A_value.f90 orbital_params.f90 monthly_output.f90 timesteps_output.f90
	${FC} EBM.f90 grid.f90 app.f90 geography_input.f90 albedo_input.f90 A_value.f90 orbital_params.f90  monthly_output.f90 timesteps_output.f90 -o ${NAME} ${INC_NC} ${LIB_NC}

clean:
	rm -rf *~



#!/bin/bash

FC=gfortran

NC_CROOT=/usr/local/Cellar/netcdf/4.9.0
NC_FROOT=/usr/local/Cellar/netcdf-fortran/4.6.0
INC_NC="-I${NC_FROOT}/include"
LIB_NC="-L${NC_FROOT}/lib -lnetcdff -L${NC_CROOT}/lib -lnetcdf"

$FC extract.f90 -o extract
$FC prepare_geography.f90 -o prepare_geography $INC_NC $LIB_NC
$FC prepare_albedo.f90 -o prepare_albedo $INC_NC $LIB_NC

./extract
./prepare_geography
./prepare_albedo
mv -f *.nc ../input
#rm -rf *~

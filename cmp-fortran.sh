gfortran -fno-range-check ./Modulos/mod_prec.f90 ./Modulos/mod_funciones.f90 ./Modulos/mod_metodos.f90 main_program.f90 -o main_program.x 
./main_program.x 
gnuplot p2-funciones.plt
gnuplot p2-deltaX.plt
gnuplot p2-deltaX-ite.plt
gnuplot p2-error-ite.plt

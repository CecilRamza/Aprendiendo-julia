DE = Ejecutable
DC = Compilado
DCF = Código_fuente

DEx = ../Modls
#-----

#----- Directorio externo:
VPATH = $(DEx)
#-----

#----- Acciones:
ejecutar: compilar iniciar

compilar:
	clear
	gfortran -c $(DCF)/Funcion.f08 $(DCF)/DF1D.f08
	mv *.mod $(DC)
	mv *.o $(DC)
	gfortran $(DC)/Funcion.o $(DC)/DF1D.o -o $(DE)/DF1D.out

iniciar:
	./$(DE)/DF1D.out

.PHONY: help
help:
	clear
	@echo
	@echo make ejecutar
	@echo

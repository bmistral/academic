# Nom du compilateur
FC = gfortran

# Directives de compilation
FCFLAGS= -g -Og -fcheck=all -Wall

# Sources (l’ordre est important !)
SRCS= main.f90

# Nom de l’exécutable
PROGRAM=main

# Ne pas éditer en dessous de cette ligne
OBJ=$(SRCS:.f90=.o)

all: $(PROGRAM)

$(PROGRAM): $(OBJ)
	$(FC) $(FCFLAGS) -o $@ $^
%.o: %.f90
	$(FC) $(FCFLAGS) -c $<
clean:
	rm -f *.o *.mod fort.*

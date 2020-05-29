all: iELF

iELF: main.o hellogeneralkenobi.o
	$(info linking main.o and hellogeneralkenobi.o to an excutable programm named iELF)
	$(info Although this instruction is the first in the Makefile, the other things we need are built first. Make is really smart ;-D)
	gcc -lm -o iELF main.o hellogeneralkenobi.o


hellogeneralkenobi.o: hellogeneralkenobi.c
	$(info creating object for hellogeneralkenobi.o, consists of hellogeneralkenobi.c)
	gcc -O -c hellogeneralkenobi.c


main.o: main.c
	$(info creating object for main.o, consists of main.c and utils.h)	
	gcc -O -c main.c utils.h

ASSEMBLE:
	gcc -S main.c
	gcc -S hellogeneralkenobi.c

clean:
	$(info clean up, and remove all objects and the executable)
	rm *.o *.s iELF *.gch

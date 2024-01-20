# ASM_SRC		= $(filter-out ramdisk.S, $(sort $(wildcard *.S)))
C_SRC       = $(sort $(wildcard *.c))
OBJ		    = $(patsubst %.S,%.o,$(ASM_SRC)) $(patsubst %.c,%.o,$(C_SRC))

all:$(OBJ)
	
%.o:%.c
	${GCC} ${CFLAG} -c $<

clean:
	$(shell rm *.o 2>/dev/null)
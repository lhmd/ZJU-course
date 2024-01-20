ASM_SRC		= $(filter-out uapp.S, $(sort $(wildcard *.S)))
C_SRC       = $(sort $(wildcard *.c))
OBJ		    = $(patsubst %.S,%.o,$(ASM_SRC)) $(patsubst %.c,%.o,$(C_SRC))

CFLAG = -march=$(ISA) -mabi=$(ABI) -mcmodel=medany -fno-builtin -ffunction-sections -fdata-sections -nostartfiles -nostdlib -nostdinc -static -lgcc -Wl,--nmagic,--build-id=none

all: uapp.o

uapp.o: uapp.S uapp.bin uapp
	${GCC} ${CFLAG} -c uapp.S

%.o:%.c
	${GCC} ${CFLAG} -c $<

%.o:%.S
	${GCC} ${CFLAG}  -c $<

uapp.bin: $(OBJ)
	${GCC} ${CFLAG} -fpie -T link.lds -o uapp.elf ${OBJ}
	${OBJCOPY} uapp.elf -O binary uapp.bin

clean:
	$(shell rm *.o uapp.o uapp.elf uapp.bin 2>/dev/null)

uapp: $(OBJ)
	${GCC} ${CFLAG} -o uapp ${OBJ}

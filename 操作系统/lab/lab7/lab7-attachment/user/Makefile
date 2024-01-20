ASM_SRC		= $(filter-out ramdisk.S, $(sort $(wildcard *.S)))
C_SRC       = $(sort $(wildcard *.c))
OBJ		    = $(patsubst %.S,%.o,$(ASM_SRC)) $(patsubst %.c,%.o,$(C_SRC))

CFLAG = -march=$(ISA) -mabi=$(ABI) -mcmodel=medany -fno-builtin -ffunction-sections -fdata-sections -nostartfiles -nostdlib -nostdinc -static -lgcc -Wl,--nmagic,--build-id=none -O0

all: ramdisk

ramdisk: ramdisk.S uapp.bin uapp
	${GCC} ${CFLAG} -c ramdisk.S -o ramdisk

%.o:%.c
	${GCC} ${CFLAG} -c $<

%.o:%.S
	${GCC} ${CFLAG}  -c $<

uapp.bin: $(OBJ)
	${GCC} ${CFLAG} -fpie -T link.lds -o uapp.mid ${OBJ}
	${OBJCOPY} uapp.mid -O binary uapp.bin
	rm uapp.mid

uapp: $(OBJ)
	${GCC} ${CFLAG} -o uapp ${OBJ}

clean:
	$(shell rm *.o ramdisk uapp.elf uapp.bin uapp.mid uapp 2>/dev/null)
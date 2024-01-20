export
CROSS_=riscv64-linux-gnu-
GCC=${CROSS_}gcc
LD=${CROSS_}ld
OBJCOPY=${CROSS_}objcopy
SCHEDULE ?= SJF

ISA=rv64imafd_zifencei
ABI=lp64

INCLUDE = -I $(shell pwd)/include -I $(shell pwd)/arch/riscv/include
CF = -march=$(ISA) -mabi=$(ABI) -mcmodel=medany -fno-builtin -ffunction-sections -fdata-sections -nostartfiles -nostdlib -nostdinc -static -lgcc -Wl,--nmagic -Wl,--gc-sections -g -D$(SCHEDULE)
CFLAG = ${CF} ${INCLUDE}

.PHONY:all run debug clean flash noflash qemu
all: clean
	${MAKE} -C user all
	${MAKE} -C lib all
	${MAKE} -C init all
	${MAKE} -C fs all
	${MAKE} -C arch/riscv all
	@echo -e '\n'Build Finished OK

debug: all
	@echo Launch the qemu ......
	@qemu-system-riscv64 \
		-machine virt \
		-nographic \
		-bios default \
		-kernel vmlinux \
		-global virtio-mmio.force-legacy=false \
		-drive file=disk.img,if=none,format=raw,id=hd0 \
		-device virtio-blk-device,drive=hd0 \
		-S -s

run: all
	@echo Launch the qemu ......
	@qemu-system-riscv64 \
		-machine virt \
		-nographic \
		-bios default \
		-kernel vmlinux \
		-global virtio-mmio.force-legacy=false \
		-drive file=disk.img,if=none,format=raw,id=hd0 \
		-device virtio-blk-device,drive=hd0

clean:
	${MAKE} -C lib clean
	${MAKE} -C user clean
	${MAKE} -C fs clean
	${MAKE} -C init clean
	${MAKE} -C arch/riscv clean
	$(shell test -f vmlinux && rm vmlinux)
	$(shell test -f System.map && rm System.map)
	@echo -e '\n'Clean Finished

compile_commands.json: clean
	bear -- make
	sed -i 's/_zifencei//g' compile_commands.json

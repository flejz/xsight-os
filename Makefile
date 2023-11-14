ASM=nasm


compile:
	$(ASM) src/boot.asm -f bin -o build/boot.bin

run: compile
	qemu-system-x86_64 build/boot.bin


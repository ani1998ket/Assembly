% : %.o
	ld -m elf_i386 $< -o $@ 
%.o: %.asm
	nasm -f elf32 $< -o $@


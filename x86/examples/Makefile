ex10 : ex10.o
	gcc -m32 $< -o $@

% : %.o
	ld -m elf_i386 $< -o $@ 

%.o: %.asm
	nasm -f elf32 $< -o $@


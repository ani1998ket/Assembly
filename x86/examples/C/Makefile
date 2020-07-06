main : main.c add42.o
	gcc -m32 main.c add42.o -o main
add42.o : add42.asm
	nasm -f elf32 $< -o $@

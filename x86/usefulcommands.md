## Useful Commands

* size
* ldd
* hd / hexdump -C 
* elfedit
* xxd -b
* ld --verbose

> ELF stands for Executable and Linkable format
---## Useful Commands

* size
* ldd
* hd / hexdump -C
* elfedit
* xxd -b
* ld --verbose

> ELF stands for Executable and Linkable format

----
> For compiling and running .asm using nasm assembler

    $ nasm -f elf32 <filename.asm> -o <filename.o>
    $ ld -m elf_i386 <filename.o> -o <filename>
    $ ./<filename>

> For compiling and running .asm using nasm assembler
    $ nasm -f elf32 <filename.asm> -o <filename.o>
    $ ld -m elf_i386 <filename.o> -o <filename>
    $ ./<filename>

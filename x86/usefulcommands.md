## Useful Commands


* size
* ldd
* hd / hexdump -C
* elfedit
* xxd -b
* ld --verbose
* readelf -a {binary}
* objdump -sdf {binary}
* gdb
    
    * **(gdb)** info functions
    * **(gdb)** disassemble {funcname}
    * **(gdb)** file {filename}



> ELF stands for Executable and Linkable format

> For compiling and running .asm using nasm assembler

    $ nasm -f elf32 <filename.asm> -o <filename.o>
    $ ld -m elf_i386 <filename.o> -o <filename>
    $ ./<filename>


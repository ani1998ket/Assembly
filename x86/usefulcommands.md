## Useful Commands


* size
* ldd
* hd / hexdump -C
* elfedit
* xxd -b
* ld --verbose
* readelf -a {binary}
* objdump -sdf -Mintel {binary}
* gdb
    
    * **(gdb)** info functions
    * **(gdb)** disassemble {funcname}
    * **(gdb)** file {filename}
    * **(gdb)** help


> ELF stands for Executable and Linkable format

> For compiling and running .asm using nasm assembler

    $ nasm -f elf32 <filename.asm> -o <filename.o>
    $ ld -m elf_i386 <filename.o> -o <filename>
    $ ./<filename>

> Helpful links

* https://stackoverflow.com/questions/7848771/how-can-one-see-content-of-stack-with-gdb
* https://stackoverflow.com/questions/3577922/how-to-link-a-gas-assembly-program-that-uses-the-c-standard-library-with-ld-with

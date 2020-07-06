### Instructions

For assembling and linking a example

    $ make ex{index}

For executing the binary produced

    $ ./ex{index}

For producing the object file

    $ make ex{index}.o

> Replace index with example no. ( eg. make ex1 )

For assembling all of the binary at once, use:
 
    $ make ex{{1..10},6b,8b}

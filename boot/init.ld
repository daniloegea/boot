INPUT(
    init.o
    string.o
    io.o
    screen.o
    )

ENTRY(init);

SECTIONS
{
    . = 0x001000;

    .text ALIGN (0x1000) :
    {
        *(.text)
}

    .rodata ALIGN (0x1000) :
    {
        *(.rodata*)
    }

    .data ALIGN (0x1000) :
    {
        *(.data)
    }

    .bss :
    {
        sbss = .;
        *(COMMON)
            *(.bss)
            ebss = .;
    }
}

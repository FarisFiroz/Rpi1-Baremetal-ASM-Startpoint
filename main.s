/*
    vim: filetype=asm

    We want to enable the activity LED, we can do this by enabling output on GPIO16
.global _start
_start:
*/
.equ gpio_base, 0x20200000
.equ gpio_gpset0_offset, 0x28

// Enable gpio 16 output
    ldr r0, =gpio_base + gpio_gpset0_offset
    mov r1, #0x1<<16
    str r1, [r0]

tst:
    b tst

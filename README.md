# What is this?
This is an initial startpoint for assembly on the original Raspberry Pi.

This includes:
- A simple assembly file that will turn on the on-board "ACT" LED.
- A makefile that is able to create a usable kernel.img file and clean up build-garbage.

# How to use?
Using this codebase is fairly straightforward. The steps are as follows:
- Set up all [prerequisites](#prereqisites)
- Edit the main.s file as necessary (add other asm files as needed, ensure they are included into one another)
- Use the GNU make program without any arguments to make the kernel.img file (along with the kernel.o object file)
- Copy the kernel.img file to the root of the SD card
- You can use `make clean` to delete the build outputs
- At this point the SD card can be put into the RPi and the code will run!

## Prerequisites
- You need an SD card formatted in FAT32
- You will need the bootcode.bin and start.elf files found in the [Raspberry Pi Boot Firmware Tree](https://github.com/raspberrypi/firmware/tree/master/boot)

# Build Requirements
- GNU Make
- GNU AS and OBJCOPY for ARM embedded

# Notes:
- The makefile is pretty barebones and will need to be improved later.

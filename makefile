default:
	arm-none-eabi-as -mcpu=arm1176jzf-s -march=armv6 main.s -o kernel.o
	arm-none-eabi-objcopy kernel.o -O binary kernel.img --adjust-vma=0x8000
clean:
		rm -f kernel.o
		rm -f kernel.img

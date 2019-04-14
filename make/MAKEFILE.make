# Make file for gcc and avr dude
PRJ = main
# avr mcu
MCU = atmega328p
# mcu clock frequency
CLK = 19200
# avr programmer (and port if necessary)
# e.g. PRG = usbtiny -or- PRG = arduino -P /dev/tty.usbmodem411
PRGR = usbtiny
# device port
DEVICE_PORT = arduino -P /devtty.usbmodem420


compile: build_script.sh
        $avr-gcc main.c -g -Os -mmcu=atmega328p -c main.c
        $avr-gcc -g -mmcu=atmega32 -o main.elf main.o
        $avr-objcopy -j .text -j .data -O ihex main.elf main.hex
        $avr-size --format=avr --mcu=atmega32 main.elf

upload: load_script.sh
        $avrdude -c usbtiny -p m32 -b 19200 -U flash:w:main.hex -F
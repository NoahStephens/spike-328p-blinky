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
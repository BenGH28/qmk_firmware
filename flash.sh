#!/bin/sh
#
#might not be necesessary if you setup qmk firmwar correctly
#This is how I flashed the first time on a fresh arduino
#used `qmk flash` after that
sudo "/home/ben/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/bin/avrdude" \
    "-C/home/ben/.arduino15/packages/arduino/tools/avrdude/6.3.0-arduino17/etc/avrdude.conf" -v -V \
    -patmega32u4 -cavr109 "-P/dev/ttyACM0" -b57600 -D "-Uflash:w:/home/ben/repos/qmk_firmware/.build/ferris_sweep_default.hex:i"

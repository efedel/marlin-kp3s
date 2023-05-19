#!/usr/bin/env sh
cp ../releases/2.1.1-edf/Configuration.h Marlin/Configuration.h
platformio run --target clean  -e mks_robin_nano
platformio run  -e mks_robin_nano35
rm ../releases/2.1.1-edf/Robin_nano.bin
cp .pio/build/mks_robin_nano35/Robin_nano35.bin ../releases/2.1.1-edf/Robin_nano.bin
echo cp ../releases/2.1.1-edf/*.bin /mnt


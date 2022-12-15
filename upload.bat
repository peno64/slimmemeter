rem python esptool.py --before default_reset --after hard_reset --baud 115200 --chip esp8266 --port COM5 write_flash 0x0 ".\.esphome\build\slimmelezer\.pioenvs\slimmelezer\firmware.bin"
esptool --before default_reset --after hard_reset --baud 115200 --chip esp8266 --port COM5 write_flash 0x0 ".\.esphome\build\slimmelezer\.pioenvs\slimmelezer\firmware.bin"

#!/bin/sh

# Author : Arnaud Piraprez
# Copyright (c) AK Hosting Solutions Inc
# Script follows here:
cd /home/miner
sudo su
echo "Downloading BIOS"
wget -N https://github.com/lucky21110/hiveos-sushipool/raw/master/rx470.rom
echo "Flashing GPU"
/root/utils/atiflash -pa /home/miner/rx470.rom -pavbpn=113-AD009HS-XGB
echo "Rebooting"
reboot

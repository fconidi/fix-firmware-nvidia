#!/bin/bash

# Source: https://francoconidi.it/
# Source: https://syslinuxos.com

# folder creation
mkdir /home/$USER/nvidia; cd /home/$USER/nvidia

sudo cp -r /usr/lib/firmware/nvidia/ga102/acr/ /usr//lib/firmware/nvidia/ga107/
sudo cp -r /usr/lib/firmware/nvidia/ga102/acr/ /usr//lib/firmware/nvidia/ga106/
sudo cp -r /usr/lib/firmware/nvidia/ga102/acr/ /usr//lib/firmware/nvidia/ga104/
sudo cp -r /usr/lib/firmware/nvidia/ga102/acr/ /usr//lib/firmware/nvidia/ga103/
sudo cp -r /usr/lib/firmware/nvidia/ga102/nvdec/ /usr//lib/firmware/nvidia/ga107/
sudo cp -r /usr/lib/firmware/nvidia/ga102/nvdec/ /usr//lib/firmware/nvidia/ga106/
sudo cp -r /usr/lib/firmware/nvidia/ga102/nvdec/ /usr//lib/firmware/nvidia/ga104/
sudo cp -r /usr/lib/firmware/nvidia/ga102/sec2/ /usr//lib/firmware/nvidia/ga107/
sudo cp -r /usr/lib/firmware/nvidia/ga102/sec2/ /usr//lib/firmware/nvidia/ga106/
sudo cp -r /usr/lib/firmware/nvidia/ga102/sec2/ /usr//lib/firmware/nvidia/ga104/
sudo cp -r /usr/lib/firmware/nvidia/ga102/sec2/ /usr//lib/firmware/nvidia/ga103/
sudo cp -r /usr/lib/firmware/nvidia/ga102/nvdec/ /usr//lib/firmware/nvidia/ga103/

echo "The check has been completed."

# Update initramfs
sudo update-initramfs -u

# remove folder nvidia
rm -rf /home/$USER/nvidia/

echo "Fix missing firmware has been completed."

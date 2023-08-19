sudo apt-get install git python3-pip python3-dbus
pip3 install gatt libscrc paho-mqtt dalybms pyserial --break-system-packages
git clone https://github.com/Weezmo/renogy_bt1.git
git clone https://github.com/dreadnought/python-daly-bms.git
cd python-daly-bms
sudo python3 setup.py install
# reboot seems require to initialize
sudo reboot
## test serial connection on usb0
daly-bms-cli  -d /dev/ttyUSB0 --soc





##quick copy, havent sorted into files

#!/bin/bash

python3 ./renogy_bt1/example.py >/dev/null 2>&1 &
while true; do
    ./dalybms72.sh >/dev/null 2>&1 &
    ./dalybms280.sh >/dev/null 2>&1 &
    sleep 1  # Add a delay between iterations if desired
done

nohup ./start.sh >/dev/null 2>&1 &

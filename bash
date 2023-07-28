sudo apt-get install git python3-pip python3-dbus
pip3 install gatt libscrc paho-mqtt dalybms pyserial
git clone https://github.com/Weezmo/renogy_bt1.git
git clone https://github.com/dreadnought/python-daly-bms.git
cd python-daly-bms
sudo python3 setup.py install
cd
## test serial connection on usb0
daly-bms-cli  -d /dev/ttyUSB0 --soc

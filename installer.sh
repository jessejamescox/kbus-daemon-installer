#!/bin/bash

EXEC_DIR="kbus-daemon-installer-main/"

JSONC_IPK="json-c_0.12.1+20160607_armhf.ipk"
MOSQT_IPK="mosquitto_2.0.0_armhf.ipk"

BIN_FILE="kbus-daemon"

KBUS_CONFIG_DIR="/etc/kbus-daemon"
KBUS_CONFIG_FILE="kbus-daemon.cfg"

MOSQ_CONFIG_FILE="mosquitto.conf"

INIT_DIR="/etc/init.d"
INIT_SCRIPT="kbus-daemond"

# delete the zip immediately to make room
echo "making some room"
rm -r /root/main.zip

echo "entering installer directory"
cd $EXEC_DIR

#stop the runtime
echo "switching off PLC runtime"
/etc/config-tools/config_runtime runtime-version=0

# execute the ipk file
echo "installing the json-c ipk"
opkg install --force-reinstall ipk/$JSONC_IPK

# execute the ipk file
echo "updating mosquitto to version 2.0.0"
opkg install ipk/$MOSQT_IPK

# copy the bin
echo "moving the binary file"
mv bin/$BIN_FILE /bin/ && chmod +x /bin/$BIN_FILE

#copy over the config
echo "adding config directory and file"
mkdir $KBUS_CONFIG_DIR && mv kbus-daemon/$KBUS_CONFIG_FILE $KBUS_CONFIG_DIR

#copy the init.d script and link it to the start
echo "adding init script and startup behavior"
mv init.d/$INIT_SCRIPT $INIT_DIR && chmod +x $INIT_DIR/$INIT_SCRIPT

# make the linker script
echo "linking the startup to rc.d"
cd /etc/rc.d && ln -s ../init.d/$INIT_SCRIPT S99_kbus-daemond

# clean up 
echo "cleaning up"
rm -r /root/kbus-daemon-installer-main

echo "INSTALL COMPLETE - make sure you update the configuration file at /etc/kbus-daemon.conf"

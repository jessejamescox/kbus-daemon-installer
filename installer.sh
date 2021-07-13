#!/bin/bash
JSONC_IPK="json-c_0.12.1+20160607_armhf.ipk"

BINFILE="kbus-daemon"

CONFIG_DIR="/etc/kbus_mqtt_client"
CONFIG_FILE="kbus-daemon.cfg"

INIT_DIR="/etc/init.d"
INIT_SCRIPT="kbus_daemond"



#stop the runtime
./config_runtime runtime-version=0

# execute the ipk file
opkg install --force-reinstall ipk/$JSONC_IPK

# copy the bin
mv bin/$BINFILE /bin/

#copy over the config
mkdir $CONFIG_DIR && mv kbus_mqtt_client/$CONFIG_FILE $CONFIG_DIR

#copy the init.d script and link it to the start
mv init.d/$INIT_SCRIPT $INIT_DIR && chmod +x $INIT_DIR/$INIT_SCRIPT

# make the linker script
cd /etc/rc.d && ln -s ../init.d/$INIT_SCRIPT S99_kbus-daemond)
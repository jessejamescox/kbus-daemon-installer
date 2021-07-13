# kbus-daemon-installer
## Based on [kbus-daemon](https://github.com/jessejamescox/wago-kbus-daemon) that allows for read/write the WAGO Kbus over MQTT.

Install the kbus driver for mqtt on WAGO PFC100 and PFC200 controllers

1. Download and run the kbus-daemon installer script:

`wget https://github.com/jessejamescox/kbus-daemon-installer/archive/refs/heads/main.zip && unzip main.zip && sh kbus-daemon-installer-main/installer.sh`

2. Navigate to /etc/kbus-daemon/kbus-daemon.cfg and configure the mqtt client

5. reboot the controller and the service will start when the start/stop/reset switch is in the run position

<h1 style="font-weight:normal">
  &nbsp;WAGO PFC Kbus Daemon Installer v2.0.0 &nbsp;
  <a href="kbus-daemon gif"><img src=images/daemon-installer.gif></a>
</h1>

An open source MQTT driver for WAGO PFC controllers backplane.

This project is still in beta - please use at your own risk and post any bugs to [issues](https://github.com/jessejamescox/kbus-daemon-installer/issues)

Version 2.0 introduces pdates that will break version 1.X.X.  
<br>

Features
========
* Kbus connects directly to MQTT broker either onboard the controller or externally
* Status and error messages are sent under <NodeID>/kbus/status topic
* Kbus process data is transmitted under <NodeID>/kbus/event <inputs/outputs> topic
* Supoprt all WAGO "simple" modules, analog and digital
* Entirely event driven I/O bus minimizes network stress
* Very low CPU resource usage

Get started
===========
Install the driver on your controller.  This is done with the following command:

`wget https://github.com/jessejamescox/kbus-daemon-installer/archive/refs/heads/main.zip && unzip main.zip && sh kbus-daemon-installer-main/installer.sh`

Requirements
============
* WAGO PFC with firmware >= 18

Development
=======
This project is open source and can be modified. See here for the development repo [kbus-daemon source](https://github.com/jessejamescox/wago-kbus-daemon) for more information.


License
=======
kbus-daemon-installer is under the MIT license. See the [LICENSE](https://github.com/jessejamescox/kbus-daemon-installer/blob/main/LICENSE.md) for more information.

Links
=====
* [Jesse Cox YouTube](https://www.youtube.com/channel/UCXEwdiyGgzVDJD48f7rWOAw)
* [Jesse Cox LinkedIn](https://www.linkedin.com/in/jesse-cox-90535110/)
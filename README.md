<h1 style="font-weight:normal">
  &nbsp;WAGO PFC Kbus Daemon Installer v2.0.0 &nbsp;
  <a href="kbus-daemon gif"><img src=images/daemon-installer.gif></a>
</h1>

An open source MQTT driver for WAGO PFC controllers backplane.

This project is still in beta - please use at your own risk and post any bugs to [issues](https://github.com/jessejamescox/kbus-daemon-installer/issues)

Version 2.0 introduces updates that will break version 1.X.X. of the node-red-contrib-wago nodes for Node-RED.
<br>

# Features

- Kbus connects directly to MQTT broker either onboard the controller or externally
- Status and error messages are sent under <NodeID>/kbus/status topic
- Kbus process data is transmitted under <NodeID>/kbus/event <inputs/outputs> topic
- Supoprt all WAGO "simple" modules, analog and digital
- Entirely event driven I/O bus minimizes network stress
- Very low CPU resource usage

# Get started

Install the driver on your controller. This is done with the following command:

`wget https://github.com/jessejamescox/kbus-daemon-installer/archive/refs/heads/main.zip && unzip main.zip && sh kbus-daemon-installer-main/installer.sh`

# The API

Kbus input events:
Input events will be transmitted upon change-of-state. This will be a JSON structured message the the module position and channel position.  
 For example:

```{state:{
      reported:{
            controller:{
                modules:{
                    module1:{
                      channels:{
                        channel1:{value: 123}
                        }
                      }
                    }
                  }
                }
              }```

# Requirements

- WAGO PFC with firmware >= 18

# Development

This project is open source and can be modified. See here for the development repo [kbus-daemon source](https://github.com/jessejamescox/wago-kbus-daemon) for more information.

# Changelog

- 8-2-2021
- Restructured the JSON payload to make it more IoT friendly
- Added API allows you to tag IO channels and set deadband threshold for analog inputs
- Removed the integrated mosquitto broker. If this is required you must use Docker to add the broker or connect to external broker
- Added support for mqtt connection via TLS
- Added supoprt for AWS IoT Thing shadow topic and message formatting

# License

kbus-daemon-installer is under the MIT license. See the [LICENSE](https://github.com/jessejamescox/kbus-daemon-installer/blob/main/LICENSE.md) for more information.

# Links

- [Jesse Cox YouTube](https://www.youtube.com/channel/UCXEwdiyGgzVDJD48f7rWOAw)
- [Jesse Cox LinkedIn](https://www.linkedin.com/in/jesse-cox-90535110/)
```

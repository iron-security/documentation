---
title: "Installation on Linux"
description: |
  How to install Falcon sensors on a linux operating system.
description: |
  How to install Falcon sensors on a linux operating system.

draft: false
images: []
menu:
  docs:
    parent: "sensors"
weight: 2
toc: true
---

## 1. installing the sensor package  

1. Retrieve your sensor installation file from IRON.

2. Run the installer while making sure you have root privileges:

* Ubuntu: `sudo dpkg -i FalconSensor.deb`

* RHEL, CentOS, Amazon Linux: `sudo yum install Falconsensor.rpm`
  
* SLES: `sudo zypper install Falconsensor.rpm`
  
3. Now set your CID on the sensor, substituting the CID with your IRON CID: `sudo /opt/CrowdStrike/falconctl -s --cid=<CID>`

4. Now let's start the sensor service:

* Hosts with SysVinit: `service falcon-sensor start`

* Hosts with Systemd: `systemctl start falcon-sensor`

_Installation should now be finished._
  
5. To validate that the Falcon sensor for Linux is running on your device, run this command in terminal:  `ps -e | grep falcon-sensor`

* You'll see output similar to this:  
````905 ? 00:00:08 falcon-sensor````

---
title: "Installation on Microsoft Windows"
description: |
  How to install Falcon sensors on a Microsoft Windows operating system.
description: |
  How to install Falcon sensors on a Microsoft Windows operating system.

draft: false
images: []
menu:
  docs:
    parent: "sensors"
weight: 2
toc: true
---
There are two methods for installing the falcon sensor on your Windows system:

1. Interactively installing the package
2. Deploying the sensor via your MDM system

## 1. Interactively installing the sensor package

1. Retrieve your sensor installation file from IRON.

2. Locate the file `falcon.sensor.exe` on your device and double-click it.

3. Click through the installation wizard. when asked to fill in the CID, enter your IRON CID you received.  

_Installation should now be finished._

## 2. Deploying the sensor via your MDM system  

1. Make sure to run the installer file as administrator.  

2. Run or configure your deployment tool to use this command, replacing CID with the IRON CID you received.
```falcon-sensor.exe /install /quiet /norestart CID=<CID>```  
  
To validate that the Falcon sensor for Windows is running on your machine, you can run this command at a command prompt:  
```sc.exe query csagent```

The output should mention State: Running.

----------

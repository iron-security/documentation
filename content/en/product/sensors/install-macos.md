---
title: "Installation on Apple macOS"
description: |
  How to install Falcon sensors on an Apple macOS operating system.
description: |
  How to install Falcon sensors on an Apple macOS operating system.

draft: false
images: []
menu:
  docs:
    parent: "sensors"
weight: 2
toc: true
---

There are three methods for installing the falcon sensor on your macOS system:

1. [Interactively installing the package](#1-interactively-installing-the-sensor-package)
2. [Installing the package file via terminal](#2-installing-the-package-file-via-terminal)
3. [Deploying the sensor via your MDM system](#3-deploying-the-sensor-via-your-mdm-system)

> **Note**: If you currently already use an MDM to manage your macOS devices, this method is vastly preferred since it diminishes the risk that a user disapproves the sensor installation which prevents the sensor from working.

You can also checkout this [Video walkthrough from CrowdStrike](https://youtu.be/SmlO2uEldgk).

All three installation methods will result in the following being created:

- `/Applications/Falcon.app`: the location of the falcon sensor installation.
- `/Library/Application Support/CrowdStrike/Falcon`: the location of the falcon sensor data files.
- `com.crowdstrike.falcon.Agent`: the **Endpoint Security Framework System Extension** being registered. (`systemextensionsctl list`)

## 1. Interactively installing the sensor package

1. Retrieve your sensor installation file from IRON.

2. Locate the file `falcon-sensor.pkg` on your device and double-click it.

3. Click through the installation wizard. When asked to fill in the CID, enter your IRON CID you received.

&nbsp;

## 2. Installing the package file via terminal

1. Retrieve your sensor installation file from IRON.

2. Run the following command in terminal, replacing it with the actual path of your `falcon-sensor.pkg` file:

```shell
% sudo installer -pkg path/to/falcon-sensor.pkg -target /
```

3. During the installation you will be asked to provide your account password for the installer to elevate to administrator.

4. Now you will need to approve the System Extension to run so the sensor can start doing its job:

  *There will be a message box showing you a program tried to load new system extensions signed by "Crowdstrike.Inc"*.

  1. You're now asked to approve the *System Extension*, when the system extension blocked message appears click **_Open security preferences_**.

     If this is not the case, open your **_System Preferences_**, pick **_Security & Privacy_** and then open the ***_General_*** tab.  

     At the bottom there will be a button to approve the sensor **_System Extension_**. Click it.

  > **Note**: the notification disappears if you don't interact with it in the next 30 minutes. Restart your device to get the approval message again.

  2. Allow the sensor to capture network traffic by pressing **_Allow_** in the **Network Filter** approval message.

  3. Now allow the sensor **Full Disk Access** in the **Security & Privacy** window by going through to the **Privacy** tab and clicking **Full Disk Access**.
     
     In the right pane click the plus item and navigate to `/Applications` and select `Falcon.app`. Now click **Open**.
  
     Click **_Quit now_** if this is required.

5. The sensor should now be running. You will still need to link your sensor to your account using your CID:

  ```shell
  % sudo /Applications/Falcon.app/Contents/Resources/falconctl license YOUR-CID
  ```

6. Verify your sensor installed correctly and is communicating to our cloud via:

```shell
% sudo /Applications/Falcon.app/Contents/Resources/falconctl stats | grep 'Cloud Info' -C3 | tail -n+4
```

It should mention `State: connected`.

&nbsp;

## 3. Deploying the sensor via your MDM system

1. Ensure the [falcon macOS profile](/assets/falcon/profile/falcon-macos-profile.mobileconfig) is installed to your endpoints so the necessary permissions are automatically granted to the sensor.

   We typically recommend you to do this at least a few days prior to the sensor deployment. 

2. Provide the `falcon-sensor.pkg` file to your MDM system for installation and deploy it to your endpoints.
   
   You will need to trigger a `/Applications/Falcon.app/Contents/Resources/falconctl license YOUR-CID` on your endpoints as root.

&nbsp;

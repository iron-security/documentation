---
title: "Sensor Health"
description: |
  Sensor health is a critical aspect of how capable a sensor is in detecting and stopping threats.
description: |
  Sensor health is a critical aspect of how capable a sensor is in detecting and stopping threats.

draft: false
images: []
menu:
  docs:
    parent: "scenarios"
weight: 1
toc: true
---

Falcon sensors frequently report their health status to the Crowdstrike cloud.
Sensor health is a critical aspect of how capable a sensor is in detecting and stopping threats.
There are two crucial parts to this:

## Sensor Mode

The sensor itself needs the necessary permissions and resources to run.
If there is something wrong with the way the sensor hooks into your system, it will be put into a Reduced Functionality Mode. (RFM)
And in case the sensor is not running correctly, it will not be able to detect threats.
We followup on sensor modes by monitoring the sensor health status.

## Sensor Compatibility

The Falcon sensor also shouldn't impact your endpoint after a major upgrade.
This is why Falcon keeps a whitelist of approved OS versions that they actively support.
If the sensor detects an unsupported OS version, it will not activate to prevent any malfunction to the endpoint.
This compatibility is constantly kept up-to-date and followed-up by the IRON team.

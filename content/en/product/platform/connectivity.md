---
title: "Connectivity"
description: |
    A brief overview of the network connectivity details when making use of IRON sensors is given here.
lead: |
    A brief overview of the network connectivity details when making use of IRON sensors is given here.
date: 2020-11-16T13:59:39+01:00
lastmod: 2020-11-16T13:59:39+01:00
draft: false
images: []
menu:
  docs:
    parent: "platform"
weight: 3
toc: true
---

A brief overview of the network connectivity details when making use of IRON sensors is given here.
This might be interesting in tightly controlled environments where DNS queries are regulated.
Due to the fact that TLS pinning is used to protect against Man-in-the-Middle attacks, DNS security is not described here.

## Platform connectivity

Connecting to our website, documentation wiki or platform happens over TCP or UDP port 443 over an encrypted TLS tunnel.
Port 80 is automatically redirected to 443 to ensure that the visit is always encrypted.
We support HTTP/1.0, HTTP/1.1 and HTTP/2 or QUIC.

Our services are fronted for performance and security reasons on [Cloudflare](https://www.cloudflare.com/).

## Sensor communications

The sensors will communicate over an encrypted TLS tunnel to the following endpoints:

- **ts01-lanner-lion.cloudsink.net**, TCP port 443, Amazon Web Services Europe.
- **lfodown01-lanner-lion.cloudsink.net**, TCP port 443, Amazon Web Services Europe.

These domains will rotate IP addresses so IP whitelisting is not recommended.

<!--
# Platform communications
-->

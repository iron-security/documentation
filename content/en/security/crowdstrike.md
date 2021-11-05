---
title : "Platform Security"
description: "How we secure your data and its usage on the Crowdstrike Falcon platform."
lead: ""
date: 2020-10-06T08:48:23+00:00
lastmod: 2020-10-06T08:48:23+00:00
draft: false
images: []
---

The way we consume the Crowdstrike Falcon platform is based on a set of strong principles. These principles are:

## Platform Security

We made the conscious decision of not reinventing the wheel and picking a solution that has already proven itself.
A lot of the security concerns are handled on the side of the Crowdstrike platform which has a mature and proven security model.
Crowdstrike is a SOC2 and ISO 27001 certified company.

## Customer seggregation

Customer environments are logically seggregated from each other and thus can never see each others data.

## Least Privilege

Credentials that are provided to the platform are always confined to the role that is necessary to perform the action.

## Authentication

Authentication to the platform happens over a Single-Sign On integration with our identity provider.
This identity provider requires strong passwords and MFA.
In addition, passwords are always stored in a password manager which queries breached password databases.
Password manager access is provided through the use of a hardware security key.

## Audit logging

Every action is registered in the platform audit log which can only be read by the platform administrators.
Audit log destruction is not supported.

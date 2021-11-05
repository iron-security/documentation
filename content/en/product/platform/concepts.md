---
title: "Concepts"
description: |
  Using our IRON services means you will have to have a basic understanding of the problem we are trying to solve.
description: |
  Using our IRON services means you will have to have a basic understanding of the problem we are trying to solve.

draft: false
images: []
menu:
  docs:
    parent: "platform"
weight: 1
toc: true
---

Using our IRON services means you will have to have a basic understanding of the problem we are trying to solve.
We summed up the basic concepts of our offering in this section:

## Endpoint Detection & Response

Put simply, Endpoint Detection and Response (EDR) is a cybersecurity solution that detects and mitigates cyber threats by continuously monitoring endpoint devices and analyzing a flow of continuous endpoint data.
This data is then used to take decisions on potential security risks and potentially intervene to stop the threat.

Gartner more formally defines EDR as a solution that “records and stores endpoint-system-level behaviors, uses various data analytics techniques to detect suspicious system behavior, provides contextual information, blocks malicious activity, and provides remediation suggestions to restore affected systems.”

A true EDR tool should have the following capabilities:

1. Incident data search and investigation
1. Alert triage or suspicious activity validation
1. Suspicious activity detection
1. Threat hunting or data exploration
1. Stopping malicious activity

<br>

> **What is the difference between EDR and Antivirus?**
>
> Antivirus is the prevention component of endpoint security, which aims to stop cyber threats from entering a network. When threats slip past an antivirus, EDR detects that activity and allows teams to contain the adversary before they can move laterally in the network.

<br>

EDR solutions work by providing continuous and comprehensive real-time visibility into what is happening on your endpoints. Behavioral analysis and actionable intelligence is then applied to endpoint data to stop an incident from turning into a breach.

<br>

**Information collectors** allow security teams to immediately understand the risk and scope of an advanced threat by enabling tasks such as:

- Explore the file system and extract files
- List running processes
- Extract Windows event log
- Query Windows registry
- List current network connections and configuration
- Extract process memory
- Calculate file hashes
- Collect environment variables
- Collect additional desired information using PowerShell or other tools
- Remediation actions enable teams to take action to contain or remediate a threat with speed and decisiveness including:
  - Delete a file
  - Kill a process
  - Delete or modify Windows registry key or value
  - Put a file
  - Run a script or an executable file
  - Encrypt a file
  - Restart/Shutdown
  - ...and more!

<br>

**Why is EDR important?**

All organizations should know by now that with enough motivation, time and resources, adversaries will eventually devise a way to get through your defenses, no matter how advanced. The following are some compelling reasons EDR should be a part of your endpoint security strategy.

Reason #1: Prevention alone can’t ensure 100 percent protection

When prevention fails, your organization can be left in the dark by its current endpoint security solution. Attackers take advantage of this situation to linger and navigate inside your network.

Reason #2: Adversaries can be inside your network for weeks and return at will

Because of silent failure, attackers are free to move around in your environment, often creating back doors that allow them to return at will. In most cases, the organization learns about the breach from a third party, such as law enforcement or its own customers or suppliers.

Reason #3: Organizations lack the visibility needed to effectively monitor endpoints

When a breach is finally discovered, the victim organization can spend months trying to remediate the incident because it lacks the visibility required to see and understand exactly what happened, how it happened and how to fix it — only to see the attacker return within a matter of days.

Reason #4: Access to actionable intelligence is needed to respond to an incident

Organizations may not only lack the visibility required to understand what is happening on its endpoints, it may not be able to record what is relevant to security, store it and then recall the information quickly enough when needed.

Reason #5: Having the data is only part of the solution

Even when data is available, security teams need the resources required to analyze and take full advantage of it. This is why many security teams find that soon after they’ve deployed an event collection product, such as a SIEM, they are often facing a complex data problem. Challenges around knowing what to look for, speed, and scalability begin cropping up and other problems surface before their primary objectives can even be addressed.

Reason #6: Remediation can be protracted and costly

Without the capabilities listed above, organizations can spend weeks trying to discern what actions to take —  often the only recourse is to reimage machines, which can disrupt business processes, degrade productivity and ultimately cause serious financial loss.

<br>

## Threat Hunting

Threat hunting is the practice of proactively searching for cyber threats that are lurking undetected in a network. Cyber threat hunting digs deep to find malicious actors in your environment that have slipped past your initial endpoint security defenses.

After sneaking in, an attacker can stealthily remain in a network for months as they quietly collect data, look for confidential material, or obtain login credentials that will allow them to move laterally across the environment.

Once an adversary is successful in evading detection and an attack has penetrated an organization’s defenses, many organizations lack the advanced detection capabilities needed to stop the advanced persistent threats from remaining in the network. That’s why threat hunting is an essential component of any defense strategy.

Threat hunting is becoming increasingly important as companies seek to stay ahead of the latest cyber threats and rapidly respond to any potential attacks.

**Threat Hunting Steps:**

The process of proactive cyber threat hunting typically involves three steps: a trigger, an investigation and a resolution.

Step 1: The Trigger

A trigger points threat hunters to a specific system or area of the network for further investigation when advanced detection tools identify unusual actions that may indicate malicious activity. Often, a hypothesis about a new threat can be the trigger for proactive hunting. For example, a security team may search for advanced threats that use tools like fileless malware to evade existing defenses.

Step 2: Investigation

During the investigation phase, the threat hunter uses technology such as EDR (Endpoint Detection and Response) to take a deep dive into potential malicious compromise of a system. The investigation continues until either the activity is deemed benign or a complete picture of the malicious behavior has been created.

Step 3: Resolution

The resolution phase involves communicating relevant malicious activity intelligence to operations and security teams so they can respond to the incident and mitigate threats. The data gathered about both malicious and benign activity can be fed into automated technology to improve its effectiveness without further human intervention.

Throughout this process, cyber threat hunters gather as much information as possible about an attacker’s actions, methods and goals. They also analyze collected data to determine trends in an organization’s security environment, eliminate current vulnerabilities and make predictions to enhance security in the future.

At IRON we provide free proactive threat hunting with our base EDR package because we believe security shoulnd not be an upsell but a basic right.

<br>

## Incident Response

Incident response (IR) is the steps used to prepare for, detect, contain, and recover from a data breach.

An **incident response plan** is a document that outlines an organization’s procedures, steps, and responsibilities of its incident response program.

Incident response planning often includes the following details:

- how incident response supports the organization’s broader mission
- the organization’s approach to incident response
- activities required in each phase of incident response
- roles and responsibilities for completing IR activities
- communication pathways between the incident response team and the rest of the organization
- metrics to capture the effectiveness of its IR capabilities
- It’s important to note that an IR plan’s value doesn’t end when a cybersecurity incident is over; it continues to provide support - for successful litigation, documentation to show auditors, and historical knowledge to feed into the risk assessment process and improve the incident response process itself.

According to the [National Institute of Standards and Technology (NIST)](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf), there are four key phases to IR:

1. **Preparation**: No organization can spin up an effective incident response on a moment’s notice. A plan must be in place to both prevent and respond to events.
1. **Detection and analysis**: The second phase of IR is to determine whether an incident occurred, its severity, and its type.
Containment and eradication: The purpose of the containment phase is to halt the effects of an incident before it can cause further damage.
1. **Post-incident recovery**: A lessons learned meeting involving all relevant parties should be mandatory after a major incident and desirable after less severe incidents with the goal of improving security as a whole and incident handling in particula

<br>

## Alert Fatigue

Alert fatigue is the fact of overlooking certain events because of the sheer information overload you may receive from your network.

Low-fidelity alerts are the most obvious and common contributor to alert fatigue. This results in over-alerting on events with a low probability of being malicious, or matching on activity that is actually benign.

One good example of this is low-quality IP block lists – these lists identify “known-bad IP addresses,” which should be blocked by a firewall or other filtering mechanism. Unfortunately, these lists are often under-curated or completely uncurated output from dynamic malware sandboxes.

At IRON we strive to solve this issue by triaging and assessing every security alert for you so you only focus on the events that matter to you.

<br>

## Crowdstrike Falcon

[Crowdstrike Falcon](https://www.crowdstrike.com/endpoint-security-products/falcon-platform/) is the endpoint protection platform from Crowdstrike which is hosted in a SaaS environment.
It is compromised of a single lightweight agent that should be deplyoyed to your endpoints in an automated or manual way.
Any security telemetry is sent securely to the Crowdstrike cloud environment where it is matched against potential threats indicators, threat actors and correlated with other security telemetry (referred to as "*Threat Graph*") to e.g. perform threat hunting.

### Platform

At IRON we consume European Crowdstrike Falcon instances to comply with European security & data privacy laws. (GDPR, ...)
These are setup separately per customer and applicable authorization rules applied.
Some general best practices are pushed from a parent configuration which we manage for all of our customers.

### Sensors

The Falcon sensor is a lightweight agent that is installed on your endpoint.
Depending on your operating system, it's installed in different ways:

- **macOS**: as an Apple Endpoint Security Framework System Extension.
- **Windows**: as a Windows Service.
- **Linux**: as a linux kernel module.
- **Mobile**: as a network filter.
- **Containers**: depending on your configuration, as a:
  - sidecar container
  - worker node DaemonSet
  - eBPF probe

It is also remarkable in a couple of ways:

- it activates certain functions based on our needs
- detects when being tampered with
- connects to the Falcon cloud securely (using *certificate pinning*)
- does intensive detection in a passive way to not tax the endpoint
- allows for remote incident response

### Detections

Falcon has the potential to generate detections when it thinks something is potentially malicious based on a couple of factors:

- Signature based detection
- Behavioral based detection
- Files or processes known to be malicious
- Network traffic patterns
- Known attack vectors or techniques
- ...

<br>

<hr>

<br>

*Some of the information here was kindly copied from the [Crowdstrike Cybersecurity 101 wiki](https://www.crowdstrike.com/cybersecurity-101/).*
In case if you have any additional questions, feel free reach out to tus!
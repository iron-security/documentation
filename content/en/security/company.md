---
title : "Company Security"
description: "Specific information around how we secure your information."
lead: ""
date: 2020-10-06T08:48:23+00:00
lastmod: 2020-10-06T08:48:23+00:00
draft: false
images: []
---

To ensure the secure storage and handling of our customer data, we have implemented a number of security measures:

## Security Patching

Every endpoint used in the IRON service should have recent (<2 days) patches installed and restarted, especially for the operating system. This is verified by the sensors we run on our own equipment.

## Password Management

Password management should happen on our 1Password instance for all credentials used within IRON.
Following requirements apply:

- hardware security key MFA
- strong +30 character passwords
- MFA OTP storage
- 1Password firewall rules
- 1Password recent device requirements
- periodic password breach reports
- 1Password notifications to our Slack instance

## Single-Sign On

Every service we use should work over SSO to our Google Workspace instance to handle authentication.
This will automatically make use of the hardware security key on Google Workspace side.
Our SSO provider, Google Workspace, has [Google Advanced Protection](https://landing.google.com/advancedprotection/) turned on.
We use hardware security keys which are both in a safe physical location

## EDR Coverage

Every device used within IRON should run a healthy Sensor with the sensitivity level set to *Aggressive*.
This sensor should report back to the IRON internal Falcon instance.

## Acceptable Use Policy

IRON employees are not allowed to run any software on their devices that falls under these categories:

- Pirated or Cracked software
- Software of questionable origin
- Software that is not performs questionable device or network activity
- Software that is known to cause data loss, insecure configuration or exhibit malicious activity

## Physical Security

- Access control
- A systematic security strategy to lock the building
- IRON employees are not allowed to leave their devices unattended in public spaces.

## CIS IOS Benchmark

| [CIS rules](https://www.cisecurity.org)                                                                                    | Applied | Comments|
| -| --------- | -|
| **1. Recommendations for End-User Owned Devices**                         |
| Ensure a 'Consent Message' has been 'Configured'                                            | X        |
| Ensure 'Controls when the profile can be removed' is set to 'Always'                                                                      | X        |
| Ensure 'Allow voice dialing while device is locked' is set to 'Disabled                                               | X        |
| Ensure 'Allow Siri while device is locked' is set to 'Disabled'                                                              | X        |
| Ensure 'Allow managed apps to store data in iCloud' is set to 'Disabled'                                    | X        |
| Ensure 'Force encrypted backups' is set to 'Enabled'                                                             | X        |
| Ensure 'Allow users to accept untrusted TLS certificates' is set to 'Disabled'                                                             | X        |
| Ensure 'Allow documents from managed sources in unmanaged destinations' is set to 'Disabled'                                                               |X
| Ensure 'Allow documents from unmanaged sources in managed destinations' is set to 'Disabled'                                          | X        |
| Ensure 'Treat AirDrop as unmanaged destination' is set to 'Enabled'                                                        | X        |
| Ensure 'Allow Handoff' is set to 'Disabled'                                                  | X        |
| Ensure 'Force Apple Watch wrist detection' is set to 'Enabled'                                           | X        |
| Ensure 'Show Control Center in Lock screen' is set to 'Disabled'                    | X        |
| Ensure 'Show Notification Center in Lock screen' is set to 'Disabled'                                                              | X        |
|  Ensure 'Force fraud warning' is set to 'Enabled'                                                              | X        |
|Ensure 'Accept cookies' is set to 'From websites I visit' or 'From current website only'                                                                 | X        |
| Ensure 'Managed Safari Web Domains' is 'Configured'                                                                   | X        |
| Ensure 'Allow simple value' is set to 'Disabled'                                                                  | X        |
| Ensure 'Minimum passcode length' is set to '6' or greater                                                                     | X        |
| Ensure 'Maximum Auto-Lock' is set to '2 minutes' or less                                                                 | X        |
| Ensure 'Maximum grace period for device lock' is set to 'Immediately'                                                                | X        |
| Ensure 'Maximum number of failed attempts' is set to '6'                                                                     | X        |
|  Ensure 'VPN' is 'Configured'                                                                | X        |
| Ensure 'Allow user to move messages from this account' is set to 'Disabled'                                                                  | X        |
| Ensure 'Notification Settings' are configured for all 'Managed Apps'                                                                    | X        |
| **2. Additional Recommendations**                                                              | X        |
| Ensure device is not obviously jailbroken                                                                        | X        |
| Ensure 'Software Update' returns 'Your software is up to date.'                                      | X        |
| Ensure 'Automatic Downloads' of 'App Updates' is set to 'Enabled'                               | X        |
| Ensure 'Find My iPhone/iPad' is set to 'Enabled' on end-user owned devices                                                                       | X        |
| Ensure the latest iOS device architecture is used by high-value targets                                                                          | X
=======
## CIS Apple macOS 11.0 Benchmark

| [CIS rules](https://www.cisecurity.org)                                                                                    | Applied | Comments|
| -| --------- | -|
| **1. install Updates, Patches and Additional Security Software**                         |
| Verify all Apple-provided software is current                                            | X        |
| Enable Auto Update                                                                       | X        |
| Enable Download new updates when available                                               | X        |
| Enable app update installs                                                               | X        |
| Enable system data files and security updates install                                    | X        |
| Enable macOS update installs                                                             | X        |
| Computer Name Considerations                                                             | X        |
| **2. System Preferences**                                                                |
| Turn off Bluetooth, if no paired devices exist                                           | X        |
| Show Bluetooth status in menu bar                                                        | X        |
| Enable "Set time and date automatically                                                  | X        |
| Ensure time set is within appropriate limits                                             | X        |
| Set an inactivity interval of 20 minutes or less for the screen saver                    | X        |
| Secure screen saver corners                                                              | X        |
| Familiarize users with screen lock tools or corner to Start Screen Saver                 | X        |
| Disable Remote Apple Events                                                              | X        |
| Disable Internet Sharing                                                                 | X        |
| Disable Screen Sharing                                                                   | X        |
| Disable Printer Sharing                                                                  | X        |
| Disable Remote Login                                                                     | X        |
| Disable DVD or CD Sharing                                                                | X        |
| Disable Bluetooth Sharing                                                                | X        |
| Disable File Sharing                                                                     | X        |
| Disable Remote Management                                                                | X        |
| Disable Content Caching                                                                  | X        |
| Disable Media Sharing                                                                    | X        |
| Ensure AirDrop Is Disabled                                                               | X        |
| Enable FileVault                                                                         | X        |
| Ensure all user storage APFS volumes are encrypted                                       | X        |
| Ensure all user storage CoreStorage volumes are encrypted                                | X        |
| Enable Gatekeeper                                                                        | X        |
| Enable Firewall                                                                          | X        |                                     |
| Enable Firewall Stealth Mode                                                             | X        |
| Enable Location Services                                                                 | X        |
| Monitor Location Services Access                                                         | X        |
| Disable sending diagnostic and usage data to Apple                                       | X        |
| Limit Ad tracking and personalized Ads                                                   | X        |
| Camera Privacy and Confidentiality Concerns                                              | X        |
| iCloud configuration                                                                     | X        |
| iCloud keychain                                                                          | X        |
| iCloud Drive                                                                             | X        |
| iCloud Drive Document and Desktop sync                                                   | X        |
| Time Machine Auto-Backup                                                                 | X        |
| Time Machine Volumes Are Encrypted                                                       | X        |
| Disable Wake for network access                                                          | X        |
| Disable Power Nap                                                                        | X        |
| Enable Secure Keyboard Entry in terminal.app                                             | X        |
| Ensure EFI version is valid and being regularly checked                                  | X        |                                              |
| Automatic Actions for Optical Media                                                      | X        |
| Review Siri Settings                                                                     | X        |
| Review Sidecar Settings                                                                  | X        |
| **3. Logging and Auditing**                                                              |           |
| Enable security auditing                                                                 | X        |                                              |
| Configure Security Auditing Flags per local organizational requirements                  | X        |                                              |
| Retain install.log for 365 or more days with no maximum size                             | X        |                                              |
| Ensure security auditing retention                                                       | X        |                                              |
| Control access to audit records                                                          | X        |                                              |
| Ensure Firewall is configured to log                                                     | X        |                                    |
| Software Inventory Considerations                                                        | X        |
| **4.  Network Configurations**                                                           |           |
| Disable Bonjour advertising service                                                      | X        |                                              |
| Enable "Show Wi-Fi status in menu bar"                                                   | X        |
| Create network specific locations                                                        | X        |
| Ensure http server is not running                                                        | X        |
| Ensure nfs server is not running                                                         | X        |
| Review Wi-Fi Settings                                                                    | X        |
| **5. System Access, Authentication and Authorization**                                   |           |
| Secure Home Folders                                                                      | -         | No multiple Users on our endpoints.             |
| Check System Wide Applications for appropriate permissions                               | X        |
| Check System folder for world writable files                                             | X        |
| Check Library folder for world writable files                                            | X        |
| Configure account lockout threshold                                                      | X        |
| Set a minimum password length                                                            | X        |
| Complex passwords must contain an Alphabetic Character                                   | X        |
| Complex passwords must contain a Numeric Character                                       | X        |
| Complex passwords must contain a Special Character                                       | X        |
| Complex passwords must uppercase and lowercase letters                                   | X        |
| Password Age                                                                             | X        |
| Password History                                                                         | X        |
| Reduce the sudo timeout period                                                           | X        |
| Automatically lock the login keychain for inactivity                                     | X        |
| Use a separate timestamp for each user/tty combo                                         | X        |
| Ensure login keychain is locked when the computer sleeps                                 | X        |
| Do not enable the "root" account                                                         |         |  |
| Disable automatic login                                                                  | X        |
| Require a password to wake the computer from sleep or screen saver                       | X        |
| Ensure system is set to hibernate                                                        | X        |
| Require an administrator password to access system-wide preferences                      | X        |
| Ensure an administrator account cannot login to another user's active and locked session | X        |
| Create a custom message for the Login Screen                                             | X        |
| Create a Login window banner                                                             | X        |
| Do not enter a password-related hint                                                     | X        |
| Disable Fast User Switching                                                              | X        |
| Secure individual keychains and items                                                    | X        |
| System Integrity Protection status                                                       | X        |
| Enable Sealed System Volume                                                              | X        |
| Enable Library Validation                                                                | X        |
| **6. User accounts and Environment**                                                      |           |
| Display login window as name and password                                                | X        |
| Disable Show password hints                                                              | X        |
| Disable guest account login                                                              | X        |
| Disable "Allow guests to connect to shared folders"                                      | X        |
| Remove Guest home folder                                                                 | X        |
| Turn on filename extensions                                                              | X        |
| Disable the automatic run of safe files in Safari                                        | X        |
| **7. Appendix: Additional Considerations**                                               |           |
| Extensible Firmware Interface (EFI) password                                             | X        |
| FileVault and Local Account Password Reset using AppleID                                 | X        |
| App Store Password Settings                                                              | X        |
| Apple Watch features with macOS                                                          | X        |
| System information backup to remote computers                                            | X        |
| Touch ID                                                                                 | X        |

# Multilingual Windows Network Configuration Script

## Overview

This Windows batch script automates the process of configuring network discovery, file sharing, and remote access settings on both English and Russian Windows systems. It detects the system language and applies the appropriate settings without manual intervention.

## Features

- Automatic language detection (English or Russian)
- Enables Network Discovery and File and Printer Sharing firewall rules
- Modifies registry settings for remote access
- Grants full control permissions to the "Everyone" group for the C:\Users directory
- Creates a network share for C:\Users with full access
- Sets all network connections to "Private" category

## Prerequisites

- Windows operating system (tested on Windows 10 and later)
- Administrative privileges

## Usage

1. Save the script with a `.bat` extension (e.g., `network_config.bat`).
2. Right-click on the script file and select "Run as administrator".
3. The script will automatically detect the system language and apply the appropriate settings.
4. A success message will be displayed upon completion.

## Script Breakdown

1. **Language Detection**: 
   The script queries the Windows registry to determine if the system language is Russian (code 0419).

2. **Firewall Configuration**: 
   Enables Network Discovery and File and Printer Sharing in the Windows Firewall.

3. **Registry Modification**: 
   Adds a registry key to allow remote connections to access local user accounts with full privileges.

4. **File System Permissions**: 
   Grants full control of the C:\Users directory to the "Everyone" group (or its Russian equivalent).

5. **Network Share Creation**: 
   Creates a network share for C:\Users with full access permissions.

6. **Network Profile Setting**: 
   Sets all network connections to the "Private" category using PowerShell.

## Security Considerations

**IMPORTANT**: This script makes significant changes to system security settings. It is designed for use in controlled environments where reduced security barriers are necessary. Please consider the following:

- Granting full access to C:\Users for everyone can pose significant security risks.
- Enabling Network Discovery and File Sharing may expose your system to network-based attacks.
- Modifying registry settings for remote access can potentially be exploited by malicious actors.

Only use this script in environments where you fully understand and accept these security implications.

## Customization

You can modify the script to change specific settings or add additional configurations as needed. Be sure to test any modifications in a controlled environment before deploying.

## Troubleshooting

If you encounter any issues:
1. Ensure you're running the script with administrative privileges.
2. Check the Windows Event Viewer for any error messages.
3. Verify that your Windows version is compatible with the commands used in the script.

## License

This script is licensed under the GNU General Public License v3.0 (GPL-3.0). 

The GPL-3.0 is a copyleft license that requires anyone who distributes your code or a derivative work to make the source available under the same terms. This means that any modifications or larger works incorporating this script must also be open-source and use the GPL-3.0 license.

Key points of the GPL-3.0:
- You can use, modify, and distribute the script freely.
- If you distribute the script or any derivative works, you must do so under the GPL-3.0 license.
- You must include the original copyright notice and license text with the script.
- You must disclose your source code when you distribute the script or derivative works.

For the full license text, please see: https://www.gnu.org/licenses/gpl-3.0.en.html

## Contributing

Contributions to this project are welcome. By contributing, you agree that your contributions will be licensed under the GPL-3.0 license. Please submit pull requests with any enhancements or bug fixes.

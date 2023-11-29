# Windows System Configuration Script

This batch file performs various system configuration tasks on a Windows system. Use caution and ensure that the script comes from a trusted source before execution.

## Tasks Performed:

1. **Firewall Configuration:**
   - Enables network discovery.
   - Enables file and printer sharing.
   - Enables firewall rule groups with names in non-English characters.

2. **Registry Modification:**
   - Modifies a registry key to enable remote administration.

3. **File and Share Permissions:**
   - Grants full control to everyone on "C:\users" and its subdirectories.
   - Shares "C:\users" with full control for everyone.
   - Grants full control on "C:\users" using non-English characters.
   - Shares "C:\users" with full control using non-English characters.

4. **PowerShell Command:**
   - Configures the network connection profile to be private.

## Usage:
1. **Exercise Caution:**
   - Review and understand the script before execution.
   - Ensure the script originates from a trusted source.

2. **Run the Script:**
   - Execute the batch file on a Windows system.

3. **Note:**
   - Running scripts without understanding may have unintended consequences.

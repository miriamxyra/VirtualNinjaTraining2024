<#
.SYNOPSIS
    This script retrieves the firewall rules associated with a specific firewall profile.

.DESCRIPTION
    This script retrieves the firewall rules for the specified firewall profile.
    It utilizes the Get-NetFirewallProfile cmdlet to obtain the firewall profile information
    and then retrieves the associated firewall rules using the Get-NetFirewallRule cmdlet.

.PARAMETER ProfileName
    Specifies the name of the firewall profile for which the rules are to be retrieved.
    This parameter is mandatory.

.EXAMPLE
    .\Get-FirewallRules.ps1 -ProfileName "Public"
    Retrieves all firewall rules associated with the "Public" firewall profile.

.NOTES
    Author: Miriam Wiesner, @miriamxyra
#>

Param (
    [parameter(Mandatory=$true)]
    [string]$ProfileName
)

Get-NetFirewallProfile -Name $ProfileName | Get-NetFirewallRule
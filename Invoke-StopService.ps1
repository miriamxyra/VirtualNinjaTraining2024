<#
.SYNOPSIS
    This script stops a Windows service with the specified service name.

.DESCRIPTION
    This script allows the user to stop a Windows service by providing its service name. 
    It forcefully stops the service without prompting for confirmation.

.PARAMETER ServiceName
    Specifies the name of the service to be stopped.
    This parameter is mandatory.

.EXAMPLE
    .\Invoke-StopService.ps1 -ServiceName "MyService"
    Stops the service named "MyService" without prompting for confirmation.

.NOTES
    Author: Miriam Wiesner, @miriamxyra
#>

Param (
    [parameter(Mandatory=$true)]
    [string]$ServiceName
)

Get-Service -Name $ServiceName | Stop-Service -Force -Confirm:$false -verbose
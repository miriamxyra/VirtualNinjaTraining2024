<#
.SYNOPSIS
    This script stops a process with the specified Process ID.

.DESCRIPTION
    This script allows the user to stop a process by specifying its Process ID. 
    It forcefully terminates the process without prompting for confirmation.

.PARAMETER ProcessId
    Specifies the ID of the process to be stopped.
    This parameter is mandatory.

.EXAMPLE
    .\Invoke-StopProcess.ps1 -ProcessId 1234
    Stops the process with ID 1234 without prompting for confirmation.

.NOTES
    Author: Miriam Wiesner, @miriamxyra
#>

Param (
    [parameter(Mandatory=$true)]
    [Int]$ProcessId
)

Stop-Process -ID $ProcessId -Force -Confirm:$false -Verbose
<#
    Filename:       ImportFrom-File.ps1
    Author:         Brian Neumann
    Date:           12/21/2024
    Description:    This file Imports Data from a file specified.  This script is meant to run interactively.
#>

Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff:") "Starting Execution of ImportFrom-File.ps1"

Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff:") "Getting File Name to Import Data From using a Dialog Box"
Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff:") "Enabling Windows Forms"
Add-Type -AssemblyName System.Windows.Forms

Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff:") "Initializing the Form for the Dialog Box"
$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ InitialDirectory = [Environment]::GetFolderPath('Desktop') }

Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff:") "Invoking the Dialog Box"
$null = $FileBrowser.ShowDialog()

$fileToImport = $FileBrowser.FileName

Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff:") "Getting List of Tickers to Import"
$tickersToImport = (Get-Content $fileToImport)

Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff:") "Loop Through Tickers to Get Company Name and Insert into Tickers Table in the stcokData Database"
foreach ($ticker in $tickersToImport)
{
    Write-Host (Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff:") "Getting Data for $ticker"

}
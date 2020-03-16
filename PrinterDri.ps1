Write-Host "Tilføjer printserveren"
add-printer -connectionname "\\server\printer1" #change to real path

# Indstil standardprinteren
write-host "Indstiller standardprinteren"
$Printer=Get-WmiObject -ClassName Win32_Printer
($Printer | Where-Object -FilterScript {$_.Name -eq "F.EKS HP-123"}).SetDefaultPrinter() #change to real printer

# Printer driver
Write-Host "Installere driver"
Add-PrinterDriver -Name "DRIVER NAME" -InfPath "\\server\PRINTER.inf"  #change to real driver name and path to driver (or comment it out)

Write-Host "Break" -foregroundcolor green 
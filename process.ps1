$processName = $args[0]
Write-Host "Affichage des processus contenant le mot : $processName"
$p = Get-Process | Where-Object { $_.Name -like "*$processName*" }
$p | Format-List Id, Name, Description, Product, VM, StartTime
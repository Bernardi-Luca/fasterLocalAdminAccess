#requires powerview.ps1
foreach ($pc in $(Get-NetComputer)) {echo $pc; Invoke-Command -ComputerName $pc -ScriptBlock {whoami} -ErrorAction 'silentlycontinue'; echo "======================"}

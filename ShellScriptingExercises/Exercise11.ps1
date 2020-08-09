# Takes a path to a file as argument, check is it exist and than writes the return of Get-Content to $s. if $s is not $null, the script is successful. This has to be done like this because cmdlets don't return exit codes. 
if(Test-Path $args[0]){$s = Get-Content $args[0]}
else{Write-Output "File doesn't exist"; exit 1} 
if($null -ne $s){Write-Output "$s";Write-Output "Command Successful"; exit 0}
else{Write-Output "Command Failed"; exit 1}
